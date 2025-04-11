vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Enable line numbers
vim.wo.relativenumber = true
vim.wo.number = true

vim.keymap.set('n', '<A-Down>', ':q<CR>', {})
vim.keymap.set('n', '<A-Up>', ':q!<CR>', {})
vim.keymap.set('n', '<A-Space>', ':w<CR>', {})

-- Navigate vim panes better
vim.keymap.set('n', '<A-h>', ':wincmd h<CR>') -- Left Pane 
vim.keymap.set('n', '<A-k>', ':wincmd j<CR>') -- Below Pane 
vim.keymap.set('n', '<A-j>', ':wincmd k<CR>') -- Above pane
vim.keymap.set('n', '<A-l>', ':wincmd l<CR>') -- Right pane

-- Remap k to move one line down
-- vim.keymap.set('n', 'k', 'j', { noremap = true })

-- Remap j to move one line up
-- vim.keymap.set('n', 'j', 'k', { noremap = true })


-- Enable mouse support
vim.o.mouse = "a"


-- Special Key Bindings
------------------------------------------------------------------------------------------

-- Function to set key mappings based on file type
-- function _G.set_keymaps()
--   local filetype = vim.bo.filetype
--
--   if filetype == "rust" then
--     vim.api.nvim_buf_set_keymap(0, 'n', '<leader>h', '<CMD>! cargo build<CR>', { noremap = true, silent = true })
--   elseif filetype == "c" or filetype == "cpp" then
--     vim.api.nvim_buf_set_keymap(0, 'n', '<leader>h', '<CMD>! make %<CR>', { noremap = true, silent = true })
--   elseif filetype == "lua" then
--     vim.api.nvim_buf_set_keymap(0, 'n', '<leader>h', '<CMD>! lua %<CR>', { noremap = true, silent = true })
--   end
-- end
--
-- -- Cutocommand group to avoid duplicating autocommands
-- vim.cmd([[
-- augroup FileTypeKeymaps
--   autocmd!
--   autocmd BufRead,BufNewFile * lua set_keymaps()
-- augroup END
-- ]])
--
-- -- Optional: You can also manually define filetypes based on extensions if needed
-- vim.cmd([[
-- autocmd BufRead,BufNewFile *.rs setlocal filetype=rust
-- autocmd BufRead,BufNewFile *.c,*.h setlocal filetype=c
-- autocmd BufRead,BufNewFile *.cpp,*.hpp setlocal filetype=cpp
-- autocmd BufRead,BufNewFile *.lua setlocal filetype=lua
-- ]])
------------------------------------------------------------------------------------------
