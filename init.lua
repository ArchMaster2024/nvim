-- Mostrar elementos encontrados
vim.o.showmatch = true

-- Limpiar las busquedas una vez encontrado lo que se busca
vim.o.hlsearch = false

-- Ignorar mayusculas y minusculas al realizar busquedas en un documento
vim.o.ignorecase = true

-- Poder utilizar el raton con normalidad dentro del editor
vim.o.mouse = "a"

-- Utilizar una tabulacion de 4 espacios
vim.o.tabstop = 4

vim.o.softtabstop = 4

-- Utilizar tabs para tabular
vim.o.expandtab = true

-- Al realizar autoindentado sera de 4 espacios o 1 tab
vim.o.shiftwidth = 4

-- Numeros visibles en el editor
vim.o.number = true

-- Numeros relativos activos
vim.o.relativenumber = true

-- Lista de autocompletado para comandos de terminal
vim.opt.wildmode = { "longest", "list" }

-- No utilizar archivos swap
vim.o.swapfile = false

-- Utilizar el clipboard al completo
vim.o.clipboard = "unnamedplus"

-- Acticat termguicolors
vim.o.termguicolors = true

vim.opt.textwidth = 80

-- Importar script de configuracion adicionales
require("config/mapping")
require("config/editor_mapping")
require("config/lazy")
