-- [[ -------------------------------------------------------------- ]]
-- ||                          Basic mapping                         ||
-- [[ -------------------------------------------------------------- ]]
-- ||                                                                ||
-- || This file is a central place for configure the basic mappings  ||
-- || for the editor, with this, you can centralize all your basics  ||
-- || mappings, like windows, tabs, terminals management.            ||
-- ||                                                                ||
-- || Feel free to reconfigure the maps based on your own workflow,  ||
-- || just have becareful when you change anything, because you got  ||
-- || two keybings collitions if you not got the control with others ||
-- || keybindings off others files.                                  ||
-- [[ -------------------------------------------------------------- ]]


-- [[* -------------------- Principal mappings -------------------- *]]

-- [[ ---------------- For facilitate the work flow ---------------- ]]

-- Save the file when you press Ctrl + s
vim.keymap.set('n', '<C-s>', ':w<cr>')

-- Quit of file when you press <Esc> key
vim.keymap.set('n', '<Esc>', ':q<cr>')

-- For open the personal config file
vim.keymap.set('n', '<Leader>opc', '', { silent = true })


-- [[ ------------------- For manipulate windows ------------------- ]]

-- | ------------------- For open windows comands ------------------- |

-- Open windows on vertical
vim.keymap.set('n', '<Leader>vw', ':vsplit<cr>', { silent = true })

-- Open window on horizontal
vim.keymap.set('n', '<Leader>hw', ':split<cr>', { silent = true })

-- | -------------- For move cursor to windows open ----------------- |

-- Move cursor to right window
vim.keymap.set('n', '<Leader>h', '<C-w>h', { silent = true })

-- Move cursor to down window
vim.keymap.set('n', '<Leader>j', '<C-w>j', { silent = true })

-- Move cursor to up window
vim.keymap.set('n', '<Leader>k', '<C-w>k', { silent = true })

-- Move cursor to left window
vim.keymap.set('n', '<Leader>l', '<C-w>l', { silent = true })

-- | --------------- For move windows between them ------------------ |

-- Move window to left side of monitor
vim.keymap.set('n', '<Leader>H', '<C-w>H', { silent = true })

-- Move window to down side of monitor
vim.keymap.set('n', '<Leader>J', '<C-w>J', { silent = true })

-- Move window to up side of monitor
vim.keymap.set('n', '<Leader>K', '<C-w>K', { silent = true })

-- Move window to right side of monitor
vim.keymap.set('n', '<Leader>L', '<C-w>L', { silent = true })

-- | --------------------- For windows resize ----------------------- |

-- Decrease windows size on vertical way
vim.keymap.set('n', '<Leader>rv-', '<C-w>-', { silent = true })

-- Increase windows size on vertical way
vim.keymap.set('n', '<Leader>rv+', '<C-w>+', { silent = true })

-- Decrease windows size on horizontal way
vim.keymap.set('n', '<Leader>rh-', '<C-w><', { silent = true })

-- Increase windows size on horizontal way
vim.keymap.set('n', '<Leader>rh+', '<C-w>>', { silent = true })

-- | ---------------- Specials commands for windows ----------------- |

-- Destroy window, this means this window (buffer) destroy of windows 
-- stay on memory for work with it
vim.keymap.set('n', '<Leader>dw', ':bd!<cr>', { silent = true })


-- [[ ------------------ For diagnose windows ---------------------- ]]

-- Open diagnostic in a floating window
vim.keymap.set('n', '<Leader>dof', vim.diagnostic.open_float)


-- [[ ------------------- For terminal working --------------------- ]]

-- Open terminal in horizontal
vim.keymap.set('n', '<Leader>th', ':botright :terminal<cr>', { silent = true })

-- Open terminal in vertical
vim.keymap.set('n', '<Leader>tv', ':vertical :terminal<cr>', { silent = true })

-- Exit terminal mode, this are necessary for you can press <Esc> key and leave
-- from terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-N>', { silent = true })
