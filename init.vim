" ------------------------------------------------------------------------------
" S E T T I N G S
" ------------------------------------------------------------------------------

set autochdir         " Working directory as current file's directory.
set browsedir=current " Browse in working directory.
set cdhome            " No arguments changes directory to home.
set colorcolumn=+1    " Highlight column 1 after the textwidth.
set expandtab         " Spaces instead of tabs.
set fileformats=unix  " Line endings are a new line.
set list              " Draw whitespace.
" Rules of drawing whitespace.
set listchars=tab:»■,trail:■,extends:⟩,precedes:⟨,nbsp:■
" Use CTRL-A and CTRL-X on alpha and octal.
set nrformats=alpha,octal,hex,bin
set number            " Line numbers.
set relativenumber    " Line number relative to current.
set scrolloff=8       " Leave space vertically around cursor.
set shiftround        " Indent multiples of tab width.
set shiftwidth=4      " Tab width.
set showbreak=⟩       " Wrapped line character.
set sidescrolloff=8   " Leave space horizontally around cursor.
set signcolumn=number " Signs next to line numbers.
set splitbelow        " Put new windows below.
set splitright        " Put new windows to right.
set synmaxcol=300     " Limit syntax coloring of line width.
set tabstop=4         " Tab alignment length.
set textwidth=80      " Limit to 80 characters.
set tildeop           " Tilde behaves like an operator.
set nowrap            " Do not wrap lines.

" ------------------------------------------------------------------------------
" P L U G G I N S
" ------------------------------------------------------------------------------

" Using Plug as the plugin manager.
call plug#begin()

" Git integration.
Plug 'tpope/vim-fugitive'

" Theme.
Plug 'morhetz/gruvbox'
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
let g:gruvbox_italic=1                          " Use italics.
let g:gruvbox_contrast_dark='soft'              " Softer contrast for dark.
let g:gruvbox_contrast_light='hard'             " Harder contrast for light.
autocmd vimenter * ++nested colorscheme gruvbox " Set the theme.

" Better status line.
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
set noshowmode " -- INSERT -- is not needed anymore.
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

call plug#end()
