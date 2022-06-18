-- SPDX-FileCopyrightText: (C) 2022 Cem Geçgel <gecgelcem@outlook.com>
-- SPDX-License-Identifier: GPL-3.0-or-later

-- Do not duplicate the mode.
vim.opt.showmode = false

-- Left and right side colored.
vim.g.lightline_gruvbox_color = 'both'

-- Costimize the status line.
vim.g.lightline = {
    colorscheme = 'gruvbox', -- Set status line theme.
    active = {
        left = {
            { 'mode', 'paste' },
            { 'filemod' },
            { 'cocstatus' }
        },
        right = {
            { 'totallines', 'lncnumber' },
            { 'filetype', 'fileformat', 'fileencoding' }
        }
    },
    inactive = {
        left = {
            { 'filemod' }
        },
        right = {
            { 'totallines', 'lncnumber' }
        }
    },
    tabline = {
        left = {{ 'tabs' }},
        right = {{ 'gitbranch' }, { 'bufinfo' }}
    },
    component = {
        filemod = '%f %m',       -- Lump modified symbol and relative path.
        lncnumber = '%04l:%02v', -- Show column not bytes, pad with zeros.
        totallines = '%04L',     -- Pad total line amount with zeros.
        bufinfo = 'BUF%02n',     -- Show buffer index.
    },
    component_function = {
        gitbranch = 'FugitiveHead', -- Get branch information from fugitive.
        cocstatus = 'coc#status'    -- Get status of Conquer of Completion.
    }
}

-- Fix relative file path.
vim.cmd('autocmd BufWinEnter * cd .')

-- Update Conquer of Completion status on the status line.
vim.cmd('au User CocStatusChange,CocDiagnosticChange call lightline#update()')
