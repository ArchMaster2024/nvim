local docker_composels_config = {
    cmd = { "docker-compose-langserver", "--stdio" },
    filetypes = { "yaml.docker-compose" },
    root_markers = {
        "docker-compose.yaml",
        "docker-compose.yml",
        "compose.yaml",
        "compose.yml",
        "compose.*.yaml",
        "compose.*.yml",
        "docker-compose.*.yaml",
        "docker-compose.*.yml",
    },
}

return docker_composels_config
