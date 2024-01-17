---@diagnostic disable: undefined-global
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Adding Lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)



local opts = {}

-- Lazy.Nvim loading plugins --
require("lazy").setup("plugins")

-- Keymaps --
require("keymaps")

--Setting Global Statusline --
vim.opt.laststatus = 3

-- Setting Netrw --
vim.g.netrw_winsize = 30
vim.g.netrw_banner = 0
vim.g.list_style = 3
vim.g.netrw_keepdir = 0
