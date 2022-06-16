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
