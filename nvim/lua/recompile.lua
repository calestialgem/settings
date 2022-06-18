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

-- Load Conquer of Completion by neoclide for code completion.
packer.use({ 'neoclide/coc.nvim',
branch = 'release',
config = function()
    require('completion')
end })

-- Load Fugitive for git integration.
packer.use('tpope/vim-fugitive')

-- Load Lightline by itchyny as the status line.
packer.use({ 'itchyny/lightline.vim',
after = 'vim-fugitive',
config = function()
    require('statusline')
end })

-- Load Gruvbox by shinchu and from oldwomanjosiah as the status line theme.
packer.use({ 'oldwomanjosiah/lightline-gruvbox.vim',
after = 'lightline.vim' })

-- Load Gruvbox by morhetz as the theme.
packer.use({ 'morhetz/gruvbox',
config = function()
    require('theme')
end })

-- Compile the plugin information.
packer.compile()

-- Install any missing plugins and update plugins.
packer.install()
