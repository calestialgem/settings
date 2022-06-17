-- SPDX-FileCopyrightText: (C) 2022 Cem Geçgel <gecgelcem@outlook.com>
-- SPDX-License-Identifier: GPL-3.0-or-later

-- Packer as package manager.
local packer = require('packer')
packer.init()
packer.reset()
packer.use('wbthomason/packer.nvim')

-- Fugitive for git integration.
packer.use('tpope/vim-fugitive')

-- Gruvbox as theme.
packer.use({ 'morhetz/gruvbox', config = function()
    vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = 1 -- Use 24-bit colors.
    vim.opt.termguicolors = true           -- Use 24-bit colors.
    vim.g.gruvbox_italic = 1               -- Use italics.
    vim.g.gruvbox_contrast_dark = 'hard'   -- Harden contrast for dark.
    vim.g.gruvbox_contrast_light = 'hard'  -- Harden contrast for light.
    -- Set the color scheme.
    vim.cmd('autocmd vimenter * ++nested colorscheme gruvbox')
end })

-- Lightline as status line.
packer.use({ 'itchyny/lightline.vim', config = function()
    vim.opt.showmode = false -- Do not show the mode below the status line.
end })
