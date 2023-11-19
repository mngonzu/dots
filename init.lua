vim.opt.shiftwidth = 8
vim.wo.relativenumber = true
vim.wo.number = true
vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.o.textwidth = 80
vim.opt.wrapmargin=0
vim.opt.formatoptions:append{"t"}
vim.keymap.set('n', '<leader>e', ":NvimTreeToggle")
vim.keymap.set('n', '<leader>t', ":Twilight")
vim.cmd(':set linespace=80')
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath)then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		  lazypath, }) end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
vim.cmd.colorscheme "catppuccin-mocha"
vim.cmd ('TwilightEnable')
vim.cmd(':COQnow -s')
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
