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
        -- Code available actions to execute them, code under the cursor
        vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, { silent = true, buffer = true })

        -- Get all site of implementation the code under the cursor
        vim.keymap.set('n', '<Leader>i', vim.lsp.buf.implementation, { silent = true, buffer = true })

        -- Rename all references to the symbol under the cursor
        vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, { silent = true, buffer = true })

        -- Get all references to the symbol under the cursor
        vim.keymap.set('n', '<Leader>rf', vim.lsp.buf.references, { silent = true, buffer = true })

        -- Jump to the definition of the type under the cursor
        vim.keymap.set('n', '<Leaeder>td', vim.lsp.buf.type_definition, { silent = true, buffer = true })

        -- Listing all symbols under the current buffer (file)
        vim.keymap.set('n', '<Leader>ds', vim.lsp.buf.document_symbol, { silent = true, buffer = true })

        -- Display signature information about the symbol under the cursor
        vim.keymap.set('n', '<Leader>sh', vim.lsp.buf.signature_help, { silent = true, buffer = true })
    end
})
