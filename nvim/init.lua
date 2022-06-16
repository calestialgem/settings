-- O P T I O N S

vim.opt.browsedir = 'current' -- Browse in working directory.
vim.opt.cdhome = true         -- No arguments to cd changes directory to home.
vim.opt.colorcolumn = '+1'    -- Highlight column 1 after the textwidth.
vim.opt.expandtab = true      -- Use spaces instead of tabs.
vim.opt.langmap = {           -- Fix Turkish keyboard.
    'ğ[',
    'ü]',
    'ö{',
    'ç}' }
vim.opt.list = true           -- Draw whitespace.
vim.opt.listchars = {         -- Set characters for drawing whitespace.
    tab = '»■',
    trail = '■',
    extends = '⟩',
    precedes = '⟨',
    nbsp = '■' }
vim.opt.nrformats = {         -- Set characters for increment and decrement.
    'alpha',
    'octal',
    'hex',
    'bin' }
vim.opt.number = true         -- Show line numbers.
vim.opt.path:append('**')     -- Search for files recursively.
vim.opt.relativenumber = true -- Show line numbers relatively.
vim.opt.scrolloff = 8         -- Leave space vertically around cursor.
vim.opt.shiftround = true     -- Indent multiples of tab width.
vim.opt.shiftwidth = 4        -- Set the tab width.
vim.opt.sidescrolloff = 8     -- Leave space horizontally around cursor.
vim.opt.signcolumn = number   -- Show signs next to line numbers.
vim.opt.splitbelow = true     -- Put new windows below.
vim.opt.splitright = true     -- Put new windows right.
vim.opt.tabstop = 4           -- Set tab alignment length.
vim.opt.textwidth = 80        -- Limit text width.
vim.opt.tildeop = true        -- Make ~ behave like an operator.
vim.opt.wrap = false          -- Disable wrapping.
