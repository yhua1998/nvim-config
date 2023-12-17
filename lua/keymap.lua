vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set('n', '<c-a>', 'ggVG')
keymap.set({'n', 'x'}, '<leader>p', '"0p')

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', 'j', [[v:count?'j':'gj']], {noremap=true, expr=true})
keymap.set('n', 'k', [[v:count?'k':'gk']], {noremap=true, expr=true})

-- local keymap=vim.keymap
--
-- local function opts(desc)
--     return {desc = desc, noremap = true, silent = true, nowait = true} 
-- end
--
-- keymap.set('n', '<c-a>', 'ggVG', opts(''))
-- keymap.set({'n', 'x'}, '<leader>p','"0p')
-- -- for nvim-tree
-- local ntapi = require'nvim-tree.api'
-- keymap.set({'n', 'i'}, '<c-t><c-g>', ntapi.tree.toggle, opts('nvim-tree: toggle'))
-- keymap.set({'n', 'i'}, '<c-t><c-f>', ntapi.tree.focus, opts('nvim-tree: toggle'))
-- keymap.set({'n', 'i'}, '<c-t><c-b>', ':b<CR>', opts('nvim-tree: toggle'))
-- -- telescope
-- local telescope_builtin = require'telescope.builtin'
-- keymap.set({'n'}, '<c-f><c-f>', telescope_builtin.find_files,opts('telescope: find file'))
-- keymap.set({'n'}, '<c-f><c-g>', telescope_builtin.live_grep,opts('telescope: live grep')) -- search text
-- keymap.set({'n'}, '<c-f><c-b>', telescope_builtin.buffers,opts('telescope: buffers'))
-- keymap.set({'n'}, '<c-f><c-h>', telescope_builtin.help_tags,opts('telescope: help tags'))
--
