local fs = vim.fs
local fn = vim.fn
local uv = vim.uv

local function resolve_cmd_shim(cmd_path)
    if not cmd_path:lower():match("%ngserver.cmd$") then
        return cmd_path
    end

    local ok, content = pcall(fn.readblob, cmd_path)
    if not ok or not content then
        return cmd_path
    end

    local target = content:match('%s%"%%dp0%%\\([^\r\n]-ngserver[^\r\n]-)%"')
    if not target then
        return cmd_path
    end

    local full = fs.normalize(fs.joinpath(fs.dirname(cmd_path), target))

    return resolve_cmd_shim(full)
end

local function collect_node_modules(root_dir)
    local results = {}

    local project_node = fs.joinpath(root_dir, "node_modules")
    if uv.fs_stat(project_node) then
        table.insert(results, project_node)
    end

    local ngserver_exe = fn.exepath("ngserver")
    if ngserver_exe and #ngserver_exe > 0 then
        local realpath = uv.fs_realpath(ngserver_exe) or ngserver_exe
        realpath = resolve_cmd_shim(realpath)
        local candidate = fs.normalize(fs.joinpath(fs.dirname(realpath), "../../.."))
        if uv.fs_stat(candidate) then
            table.insert(results, candidate)
        end
    end

    return results
end

local function get_angular_core_version(root_dir)
    local package_json = fs.joinpath(root_dir, "package.json")
    if not uv.fs_stat(package_json) then
        return ""
    end

    local ok, content = pcall(fn.readblob, package_json)
    if not ok or not content then
        return ""
    end

    local json = vim.json.decode(content) or {}

    local version = (json.dependencies or {})["@angular/core"] or ""
    return version:match("%d+%.%d+%.%d+") or ""
end

local angularls_config = {
    cmd = function(dispatchers, config)
        local root_dir = (config and config.root_dir) or fn.getcwd()
        local node_paths = collect_node_modules(root_dir)

        local ts_probe = table.concat(node_paths, ",")
        local ng_probe = table.concat(
            vim.iter(node_paths)
                :map(function(p)
                    return fs.joinpath(p, "@angular/language-server/node_modules")
                end)
                :totable(),
            ","
        )
        local cmd = {
            "ngserver",
            "--stdio",
            "--tsProbeLocations",
            ts_probe,
            "--ngProbeLocations",
            ng_probe,
            "--angularCoreVersion",
            get_angular_core_version(root_dir),
        }
        return vim.lsp.rpc.start(cmd, dispatchers)
    end,
    filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx", "htmlangular" },
    root_markers = { "angular.json", "nx.json" },
}

return angularls_config
