-- SPDX-FileCopyrightText: (C) 2022 Cem Geçgel <gecgelcem@outlook.com>
-- SPDX-License-Identifier: GPL-3.0-or-later

-- Easier window navigation in terminal and insert modes.
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-N><C-w>h')
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-N><C-w>j')
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-N><C-w>k')
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-N><C-w>l')

-- Easier window navigation in normal mode.
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')

-- Easier tab navigation in terminal and insert modes.
vim.keymap.set({ 't', 'i' }, '<A-n>', '<C-\\><C-N>gt')
vim.keymap.set({ 't', 'i' }, '<A-m>', '<C-\\><C-N>:tabnew<CR>')
vim.keymap.set({ 't', 'i' }, '<A-b>', '<C-\\><C-N>:tabclose<CR>')

-- Easier tab navigation in normal mode.
vim.keymap.set('n', '<A-n>', 'gt')
vim.keymap.set('n', '<A-m>', ':tabnew<CR>')
vim.keymap.set('n', '<A-b>', ':tabclose<CR>')
