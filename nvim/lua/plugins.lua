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
packer.use({ 'morhetz/gruvbox',
config = function()
    vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = 1 -- Use 24-bit colors.
    vim.opt.termguicolors = true           -- Use 24-bit colors.
    vim.g.gruvbox_italic = 1               -- Use italics.
    vim.g.gruvbox_contrast_dark = 'hard'   -- Harden contrast for dark.
    vim.g.gruvbox_contrast_light = 'hard'  -- Harden contrast for light.
    -- Set the color scheme.
    vim.cmd('autocmd vimenter * ++nested colorscheme gruvbox')
end })

-- Lightline as status line.
packer.use({ 'itchyny/lightline.vim',
config = function()
    vim.opt.showmode = false -- Do not duplicate the mode.
end })

-- Lightline Gruvbox as status line theme.
packer.use({ 'shinchu/lightline-gruvbox.vim',
after = { 'lightline.vim', 'vim-fugitive' },
config = function()
    -- Do the status line settings.
    vim.g.lightline = {
        colorscheme = 'gruvbox', -- Set status line theme.
        active = {
            -- Add gitbranch.
            -- Remove readonly.
            -- Lump file path and modified symbol together.
            left = {
                { 'mode', 'paste' },
                { 'gitbranch', 'filemod' }
            }
        },
        -- Lump relative path and modified symbol as in active.
        inactive = {
            left = {
                { 'filemod' }
            }
        },
        component = {
            filemod = '%f %m',    -- Lump modified symbol and relative path.
            lineinfo = '%3l:%-2v' -- Show columns instead of bytes.
        },
        component_function = {
            gitbranch = 'FugitiveHead' -- Get branch information from fugitive.
        },
        subseparator = {
            left = '⟩', -- Change separator between gitbranch and filemod.
            right = '⟨' -- Change separator between filetype and encoding.
        }
    }
    vim.cmd('autocmd bufenter * ++nested cd .') -- Fix relative file path.
end })
