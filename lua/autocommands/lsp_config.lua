-- [[ -------------------------------------------------------- ]]
-- ||               LSP config with autocommand                ||
-- [[ -------------------------------------------------------- ]]
-- ||                                                          ||
-- || Why I use this feature of neovim/vim, because are really ||
-- || powerfull, simple to use and you can organize certain    ||
-- || logic on a central place and decouple and separate your  ||
-- || configure logic, this mean more easy to mantain, to      ||
-- || scale, extends and understand on what's the place for    ||
-- || put your config.                                         ||
-- [[ -------------------------------------------------------- ]]
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local bufnr = args.buf
        local options = {
            silent = true,
            buffer = bufnr,
        }

        -- Code available actions to execute them, code under the cursor
        vim.keymap.set({ "n", "v" }, "<Leader>ca", vim.lsp.buf.code_action, options)

        -- Get all site of implementation the code under the cursor
        vim.keymap.set("n", "<Leader>i", vim.lsp.buf.implementation, options)

        -- Go to the declaration of the symbol under the cursor
        vim.keymap.set("n", "<Leader>de", vim.lsp.buf.declaration, options)

        -- Go to the defition of the symbol under the cursor
        vim.keymap.set("n", "<Leader>di", vim.lsp.buf.definition, options)

        -- Rename all references to the symbol under the cursor
        vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, options)

        -- Get all references to the symbol under the cursor
        vim.keymap.set("n", "<Leader>rf", vim.lsp.buf.references, options)

        -- Jump to the definition of the type under the cursor
        vim.keymap.set("n", "<Leaeder>td", vim.lsp.buf.type_definition, options)

        -- Listing all symbols under the current buffer (file)
        vim.keymap.set("n", "<Leader>ds", vim.lsp.buf.document_symbol, options)

        -- Display signature information about the symbol under the cursor
        vim.keymap.set("n", "<Leader>sh", vim.lsp.buf.signature_help, options)

        -- Display the information about symbol under cursor
        vim.keymap.set("n", "<Leader>ho", vim.lsp.buf.hover, options)
    end,
})
