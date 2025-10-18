-- Mapeando tecla lider como la tecla de ;
vim.g.mapleader = ';'

-- Ir al documento con mi configuracion
vim.keymap.set('n', '<leader>ec', ':e $MYVIMRC<CR>', { silent = true })

-- Refrescar archivo de configuracion
vim.keymap.set('n', '<leader>rsc', ':source $MYVIMRC<CR>', { silent = true })




-- Abrir ventana en formato horizontal
vim.keymap.set('n', '<leader>hw', ':split<CR>', { silent = true })

-- Abrir ventana en formato vertical
vim.keymap.set('n', '<leader>vw', ':vsplit<CR>', { silent = true })

-- Abrir nueva ventana
vim.keymap.set('n', '<leader>nw', ':new<Space>', { silent = true })

-- Abrir nueva ventana en formato vertical
vim.keymap.set('n', '<leader>nvw', ':vnew<Space>')

-- Cerrar la ventana actual
vim.keymap.set('n', '<leader>q', ':close<CR>', { silent = true })




-- Mover el cursor para la ventana de la izquierda
vim.keymap.set('n', '<leader>h', '<C-w><Left>')

-- Mover el cursor para la ventana de abajo
vim.keymap.set('n', '<leader>j', '<C-w><Down>')

-- Mover el cursor para la ventana de arriba
vim.keymap.set('n', '<leader>k', '<C-w><Up>')

-- Mover el cursor para la ventana de la derecha
vim.keymap.set('n', '<leader>l', '<C-w><Right>')

-- Mover la ventana hacia la izquierda
vim.keymap.set('n', '<leader>H', '<C-w>H')

-- Mover la ventana hacia abajo
vim.keymap.set('n', '<leader>J', '<C-w>J')

-- Mover la ventana hacia arriba
vim.keymap.set('n', '<leader>K', '<C-w>K')

-- Mover la ventana hacia la derecha
vim.keymap.set('n', '<leader>L', '<C-w>L')



-- Restar alto a la ventana
vim.keymap.set('n', '<leader>rv-', '<C-w>-')

-- Sumar alto a la ventana
vim.keymap.set('n', '<leader>rv+', '<C-w>+')

-- Restar ancho a la ventana
vim.keymap.set('n', '<leader>rh-', '<C-w><')

-- Sumar ancho a la ventana
vim.keymap.set('n', '<leader>rh+', '<C-w>>')



-- Agregar nuevo buffer a la lista de buffers
vim.keymap.set('n', '<leader>ab', ':badd<Space>')

-- Listar buffers
vim.keymap.set('n', '<leader>lb', ':buffers<CR>')

-- Abrir buffer dentro de la lista de buffers abiertos
vim.keymap.set('n', '<leader>ob', ':buffer<Space>')

-- Ver lista de los buffers disponibles y seleccionar uno
vim.keymap.set('n', '<leader>bs', ':buffers<CR>:buffer<Space>')


-- Ir al siguiente buffer
vim.keymap.set('n', '<leader>bn', ':bn<CR>', { silent = true })


-- Ir al buffer anterior
vim.keymap.set('n', '<leader>bp', ':bp<CR>', { silent = true })

-- Ir al primer buffer
vim.keymap.set('n', '<leader>bf', ':bfirst<CR>', { silent = true })

-- Ir al ultimo buffer
vim.keymap.set('n', '<leader>bl', ':blast<CR>', { silent = true })

-- Borrar el buffer actual
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { silent = true })

-- Abrir un buffer en una ventana dividida
vim.keymap.set('n', '<leader>sb', ':sbuffer<Space>', { silent = true })

-- Abrir el siguiente buffer al actual en ventana dividida
vim.keymap.set('n', '<leader>sbn', ':sbnext<CR>', { silent = true })

-- Abrir al buffer anterior al actual en ventana dividida
vim.keymap.set('n', '<leader>sbp', ':sbprevious<CR>', { silent = true })



-- Abrir nuevo documento en un tab
vim.keymap.set('n', '<leader>tb', ':tabnew<Space>', { silent = true })

-- Abrir tab en una ventana dividida
vim.keymap.set('n', '<leader>stb', ':tab split<Space>', { silent = true })

-- Cerrar el tab actual
vim.keymap.set('n', '<leader>tbc', ':tabclose<CR>', { silent = true })

-- Cerrar todos los tabs menos el actual
vim.keymap.set('n', '<leader>tbo', ':tabonly<CR>', { silent = true })

-- Ir al siguiente tab
vim.keymap.set('n', '<leader>tbn', ':tabnext<CR>', { silent = true })

-- Ir al tab anterior
vim.keymap.set('n', '<leader>tbp', ':tabprevious<CR>', { silent = true })

-- Ir al primer tab
vim.keymap.set('n', '<leader>tbf', ':tabfirst<CR>', { silent = true })

-- Ir al ultimo tab
vim.keymap.set('n', '<leader>tbl', ':tablast<CR>', { silent = true })

-- Mover tab a la izquierda
vim.keymap.set('n', '<leader>tb-', ':-tabmove<Space>', { silent = true })

-- Mover tab a la derecha
vim.keymap.set('n', '<leader>tb+', ':+tabmove<Space>', { silent = true })



-- Abrir terminal en una ventana horizontal
vim.keymap.set('n', '<leader>t', ':bot :term<CR>', { silent = true })

-- Abrir terminal en una ventana vertical
vim.keymap.set('n', '<leader>vt', ':vsplit term://zsh<CR>', { silent = true })

vim.keymap.set('t', '<Esc>', '<C-' .. '\\' .. '><C-n>', { silent = true })
