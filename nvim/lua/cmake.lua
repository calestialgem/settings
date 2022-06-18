-- SPDX-FileCopyrightText: (C) 2022 Cem Geçgel <gecgelcem@outlook.com>
-- SPDX-License-Identifier: GPL-3.0-or-later

-- Build in build directory.
vim.g.cmake_build_dir_location = 'build'

-- Export commands for clangd.
vim.g.cmake_generate_options = {
    '-DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE'
}
