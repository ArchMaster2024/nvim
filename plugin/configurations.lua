-- [[ --------------------------------------------------------------------------- ]]
-- || 		       The basic configurations for the editor 			  ||
-- || --------------------------------------------------------------------------- ||
-- ||                                                                             ||
-- || This configuration got the next goal                                        ||
-- ||                                                                             ||
-- || 1. Centralize de basic aspect of the editor, like numbers, highlights and   ||
-- || more                                                                        ||
-- || 2. Easy to understand and easy to replicate and change it                   ||
-- || 3. Good start point for new neovim users                                    ||
-- ||                                                                             ||
-- || With this file you config the basic and primal aspects of your own neovim   ||
-- || feel free to change it, study, modify and share with your friends. :-D      ||
-- ||                                                                             ||
-- [[ --------------------------------------------------------------------------- ]]


-- [[ ------------------------ Enumerations on editor --------------------------- ]]

-- Set the numbers of editor
vim.opt.number=true

-- Set the relative number for do motion more easly on editor
vim.opt.relativenumber=true

-- Increase the distance between numbers lines and text for improve the readable
vim.opt.numberwidth=5


-- [[ ----------------------------- Errors config ------------------------------- ]]

-- Sound a bell or flash window when error happend
vim.opt_global.errorbells=true

-- Actived the the window flash when error happend
vim.opt_global.visualbell=true


-- [[ ---------------------------- Generals config ------------------------------ ]]

-- Replace spaces for tabs
vim.opt.expandtab=true

-- Set the spaces of tabs to 1 tab equal to 4 spaces
vim.opt.shiftwidth=4

-- Override the ingnorecase option
vim.opt_global.smartcase=true

-- When you yank anything in a file, what this yanked informations goes
vim.opt.clipboard=unnamedplus


-- [[ ------------------------------ GUI config --------------------------------- ]]

-- Configure the background mode (light and dark) dark are default
vim.opt.background=dark

-- Active 24-bit RGB colors, check if your terminal support this feature first
vim.opt_global.termguicolors=true
