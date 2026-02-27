-- Indentation defaults: 2 spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

-- Treat snake_case parts as separate words for motions/text objects.
vim.opt.iskeyword:remove '_'
