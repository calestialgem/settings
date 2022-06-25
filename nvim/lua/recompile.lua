-- SPDX-FileCopyrightText: (C) 2022 Cem Geçgel <gecgelcem@outlook.com>
-- SPDX-License-Identifier: GPL-3.0-or-later

-- Reset all the plugin information from the previous run.
packer.reset()

-- Let the Packer manage itself for upgrades.
packer.use('wbthomason/packer.nvim')

-- CMake by cdelledonne for CMake integration.
packer.use({ 'cdelledonne/vim-cmake',
config = function()
    require('cmake')
end })

-- Nvim-CMP by hrsh7th for autocompletion.
packer.use('hrsh7th/nvim-cmp')
packer.use('hrsh7th/cmp-nvim-lsp')
packer.use('hrsh7th/cmp-buffer')
packer.use('hrsh7th/cmp-path')
packer.use('hrsh7th/cmp-cmdline')

-- LauSnip by L3MON4D3 and Nvim-CMP integration by saadparwaiz1 for snippets.
packer.use('L3MON4D3/LuaSnip')
packer.use('saadparwaiz1/cmp_luasnip')

-- Load official Neovim LSP Config for common LSP configurations.
packer.use({ 'neovim/nvim-lspconfig',
after = {
    'nvim-cmp',
    'cmp-nvim-lsp',
    'cmp-buffer',
    'cmp-path',
    'cmp-cmdline',
    'LuaSnip',
    'cmp_luasnip'
},
config = function()
    require('lsp')
end })

-- Load Fugitive for git integration.
packer.use('tpope/vim-fugitive')

-- Load Lightline Foobar by sainnhe for the status line theme.
packer.use('sainnhe/lightline_foobar.vim')

-- Load Lightline by itchyny as the status line.
packer.use({ 'itchyny/lightline.vim',
after = {
    'vim-fugitive',
    'lightline_foobar.vim'
},
config = function()
    require('statusline')
end })

-- Load Pink Moon by sts10 as the theme.
packer.use({ 'sts10/vim-pink-moon',
config = function()
    require('theme')
end })

-- Compile the plugin information.
packer.compile()

-- Install any missing plugins and update plugins.
packer.install()
