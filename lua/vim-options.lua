vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Enable line numbers
vim.wo.relativenumber = true
vim.wo.number = true

vim.keymap.set('n', '<C-Down>', ':q<CR>', {})
vim.keymap.set('n', '<C-Up>', ':q!<CR>', {})
vim.keymap.set('n', '<C-Space>', ':w<CR>', {})

-- Navigate vim panes better
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>') -- Left Pane 
vim.keymap.set('n', '<C-k>', ':wincmd j<CR>') -- Below Pane 
vim.keymap.set('n', '<C-j>', ':wincmd k<CR>') -- Above pane
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>') -- Right pane

-- Remap k to move one line down
vim.keymap.set('n', 'k', 'j', { noremap = true })

-- Remap j to move one line up
vim.keymap.set('n', 'j', 'k', { noremap = true })


-- Enable mouse support
vim.o.mouse = "a"

