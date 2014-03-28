"------------------------------------------------
" Break compatibility with Vi Classic
"------------------------------------------------
set nocompatible

"------------------------------------------------
" Install bundles Pathogen style (~/.vim/bundle)
" https://github.com/tpope/vim-pathogen
"------------------------------------------------
execute pathogen#infect()

"------------------------------------------------
" Plugin - Powerline
"------------------------------------------------
"local path on most OS's
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim
"local path for OS X with homebrew
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'solarized'

"------------------------------------------------
" Plugin - Syntastic
"------------------------------------------------
let g:syntastic_ruby_checkers=['mri', 'rubocop']
let g:syntastic_sh_checkers=['sh', 'shellcheck', 'checkbashisms']
"
" Use filetype extentions
filetype plugin indent on

" Use Syntax Colors
syntax on

" Show Command in lower left
set showcmd

" Set List Mode By Default
set list

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

"------------------------------------------------
" Highlight Whitespace
"------------------------------------------------
highlight Whitespace cterm=underline gui=underline ctermbg=darkblue guibg=darkblue ctermfg=yellow guifg=yellow
autocmd ColorScheme * highlight Whitespace gui=underline ctermbg=darkblue guibg=darkblue ctermfg=yellow guifg=yellow

" Show trailing whitespace and spaces before a tab:
match Whitespace /\s\+$\| \+\ze\t/

"------------------------------------------------
" Colorscheme - Solarized
" https://github.com/altercation/vim-colors-solarized.git
"------------------------------------------------
set background=dark
"set background=light
colorscheme solarized

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,trail:·

" Configure NETRW module to toggle hiding dot files by pressing 'a'
let g:netrw_listhide='\^\..*'
