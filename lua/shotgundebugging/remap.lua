-- Move blocks
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Move half a page, keep in center
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Next finding, keep in center
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Paste without losing it
vim.keymap.set('n', '<leader>p', [["_dP]])

-- Yank into system clipboard. y in vim, <leader>y to system
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- Quickfix
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Globally replace the word I am on, using sed
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- Neotree
vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':Neotree focus<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tt', ':Neotree reveal<CR>', { noremap = true, silent = true })

-- Go back to previous file
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader><leader>', builtin.oldfiles, {})

-- Diagnostics
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })

-- RuboCop
vim.keymap.set('n', '<leader>rb', vim.lsp.buf.format, { desc = 'Format code with RuboCop' })

-- Copy current path to system clipboard
vim.api.nvim_set_keymap('n', '<leader>cf', ':let @+ = expand("%:p")<CR>', { noremap = true, silent = true })
--  Explanation:
--  expand('%:p'): Expands to the full path of the current file.
--  @+: Refers to the system clipboard register.
--  :let: Assigns the expanded path to the clipboard register.

vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<Tab>")', { silent = true, expr = true })
