local opt = vim.opt
opt.number = true
opt.relativenumber = true

opt.scrolloff = 5
opt.sidescrolloff = 5

opt.hlsearch = true
opt.incsearch = true

opt.mouse:append('a')
opt.clipboard:append('unnamedplus')

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.ignorecase = true
opt.smartcase = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

opt.cursorline = true
opt.termguicolors = true

vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 300,
        })
    end
})

-- 初始配置
-- local opt = vim.opt

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- opt.termguicolors = true
--
-- opt.number = true
-- opt.relativenumber = true
--
-- opt.tabstop = 4
-- opt.shiftwidth = 4
-- opt.expandtab = true
-- opt.autoindent= true
--
-- vim.g.mapleader=' '
