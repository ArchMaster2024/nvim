-- Guardar archivos con "Control S"
vim.keymap.set('n', '<C-s>', ':w<CR>', { silent = true})

-- Salir del editor al pulsar la tecla de "escape
vim.keymap.set('n', '<Esc>', ':q<CR>', { silent = true})
