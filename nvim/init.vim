" ------------------------------------------------------------------------------
" S E T T I N G S
" ------------------------------------------------------------------------------

set autochdir           " Working directory as current file's directory.
set browsedir=current   " Browse in working directory.
set cdhome              " No arguments changes directory to home.
set colorcolumn=+1      " Highlight column 1 after the textwidth.
set expandtab           " Spaces instead of tabs.
set langmap=ğ[,ü],ö{,ç} " Turkish keyboard fix.
set list                " Draw whitespace.
" Rules of drawing whitespace.
set listchars=tab:»■,trail:■,extends:⟩,precedes:⟨,nbsp:■
" Use CTRL-A and CTRL-X on alpha and octal.
set nrformats=alpha,octal,hex,bin
set number            " Line numbers.
set path+=**          " Recursive search for files.
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
" Use 24-bit colors.
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
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
