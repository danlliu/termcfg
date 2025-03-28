
--------------------
-- General Config --
--------------------

-- Line numbers --

vim.opt.nu = true
vim.opt.rnu = true

-- Terminal --
vim.opt.shell = '/usr/bin/fish'
vim.cmd([[
  augroup no_nu_term 
    autocmd!
    autocmd TermOpen * set nonu nornu
    autocmd TermOpen * startinsert
  augroup END
]])

-- Indenting --

vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.sw = 4
vim.opt.ts = 4

-- Search --

vim.opt.hls = false

--------------
-- Keybinds --
--------------

vim.g.mapleader = ' '

-- Tab Manipulation --

vim.keymap.set('n', '<Leader>tn', '<cmd>:tabnew<cr>')
vim.keymap.set('n', '<Leader>tw', '<cmd>:tabclose<cr>')

-- Similar to MacOS behavior: 1-8 are regular, 9 is last tab
vim.keymap.set('n', '<Leader>t1', '1gt')
vim.keymap.set('n', '<Leader>t2', '2gt')
vim.keymap.set('n', '<Leader>t3', '3gt')
vim.keymap.set('n', '<Leader>t4', '4gt')
vim.keymap.set('n', '<Leader>t5', '5gt')
vim.keymap.set('n', '<Leader>t6', '6gt')
vim.keymap.set('n', '<Leader>t7', '7gt')
vim.keymap.set('n', '<Leader>t8', '8gt')
vim.keymap.set('n', '<Leader>t9', '$gt')

-- Moving tabs
vim.keymap.set('n', '<Leader>tmh', '<cmd>:-tabmove<cr>')
vim.keymap.set('n', '<Leader>tml', '<cmd>:+tabmove<cr>')
vim.keymap.set('n', '<Leader>tm^', '<cmd>:0tabmove<cr>')
vim.keymap.set('n', '<Leader>tm$', '<cmd>:$tabmove<cr>')

---------
-- LSP --
---------

local lspconfig = require('lspconfig')
lspconfig.clangd.setup{
    cmd = { "clangd", "--header-insertion=never" }
}
lspconfig.pylsp.setup{}

vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<Leader>crn', vim.lsp.buf.rename)
vim.keymap.set('n', '<Leader>crr', vim.lsp.buf.references)
vim.keymap.set('n', '<Leader>crs', '<cmd>:LspRestart<cr>')

-------------
-- Plugins --
-------------

require("config.lazy")

--------------------
-- Telescope.nvim --
--------------------

local telescope = require('telescope.builtin')
vim.keymap.set('n', '<Leader>ff', telescope.find_files)
vim.keymap.set('n', '<Leader>fg', telescope.live_grep)
vim.keymap.set('n', '<Leader>bs', telescope.buffers)
vim.keymap.set('n', '<Leader>ref', telescope.lsp_references)

------------------
-- lualine.nvim --
------------------

local lualine = require('lualine')
lualine.setup {
    options = { theme = 'ayu_dark' },
}

----------------
-- tabby.nvim --
----------------

local tabby = require('tabby')
tabby.setup()

-------------
-- Theming --
-------------

vim.api.nvim_set_hl(0, "Type", { fg = "#e8d7ff" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#aaaaaa" })
vim.api.nvim_set_hl(0, "@lsp.type.enum", { fg = "#ffd3e8" })
vim.api.nvim_set_hl(0, "Constant", { fg = "#dec0f1" })
vim.api.nvim_set_hl(0, "Function", { fg = "#7161ef" })
vim.api.nvim_set_hl(0, "Keyword", { fg = "#5995ed" })
vim.api.nvim_set_hl(0, "Statement", { fg = "#5995ed" })
vim.api.nvim_set_hl(0, "Include", { fg = "#5bc0eb" })
vim.api.nvim_set_hl(0, "@lsp.type.macro", { fg = "#ffad05" })
vim.api.nvim_set_hl(0, "@function.method", { fg = "#b79ced" })
vim.api.nvim_set_hl(0, "Number", { fg = "#fcff4b" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#ddbdd5" })
vim.api.nvim_set_hl(0, "String", { fg = "#50ffb1" })
vim.api.nvim_set_hl(0, "Special", { fg = "#a0c1d1" })
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", { fg = "#eee5bf" })

vim.api.nvim_set_hl(0, "Added", { fg = "#9bc53d" })
vim.api.nvim_set_hl(0, "Removed", { fg = "#c3423f" })


