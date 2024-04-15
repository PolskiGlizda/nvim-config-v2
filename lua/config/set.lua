-- nmberlines
vim.opt.nu = true
vim.opt.relativenumber = true
-- 4 space tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- smart indeting
vim.opt.smartindent = true
-- undo file
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
-- no search highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true
-- colours
vim.opt.termguicolors = true
-- visuals
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
