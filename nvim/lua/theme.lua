-- SPDX-FileCopyrightText: (C) 2022 Cem Geçgel <gecgelcem@outlook.com>
-- SPDX-License-Identifier: GPL-3.0-or-later

-- Use italics.
vim.g.gruvbox_italic = 1

-- Harden contrast for dark.
vim.g.gruvbox_contrast_dark = 'hard'

-- Harden contrast for light.
vim.g.gruvbox_contrast_light = 'hard'

-- Set the color scheme after loading is complete.
vim.cmd('autocmd vimenter * ++nested colorscheme gruvbox')
