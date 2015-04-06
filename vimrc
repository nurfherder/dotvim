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
" General Settings
"------------------------------------------------
" Use filetype extentions
filetype plugin indent on

" Use Syntax Colors
syntax on

" Show Command in lower left
set showcmd

" Turn on ListChars to visualize whitespace with symbols
set list

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,trail:·

" Turn on Line Numbers By Default
set nu

" Shortcut to toggle list mode, line numbers and paste mode
" This makes it easier to cut and paste to a vim in terminal
nmap <leader>l :set list!<CR> :set nu!<CR> :set paste!<CR>

" Configure NETRW module to toggle hiding dot files by pressing 'a'
let g:netrw_listhide='\^\..*'

"------------------------------------------------
" Plugin - Airline
"------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_theme = "solarized"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"------------------------------------------------
" Plugin - Powerline
"------------------------------------------------
"local path on most OS's
"set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim
"local path for OS X with homebrew
"set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set encoding=utf-8
"set fillchars+=stl:\ ,stlnc:\
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_colorscheme = 'solarized'

"------------------------------------------------
" Plugin - Syntastic
"------------------------------------------------
let g:syntastic_ruby_checkers=['mri', 'rubocop']
let g:syntastic_sh_checkers=['sh', 'shellcheck', 'checkbashisms']

"------------------------------------------------
" Highlight Whitespace
"------------------------------------------------
highlight Whitespace cterm=underline gui=underline ctermbg=darkblue guibg=darkblue ctermfg=yellow guifg=yellow
autocmd ColorScheme * highlight Whitespace gui=underline ctermbg=darkblue guibg=darkblue ctermfg=yellow guifg=yellow

" Show trailing whitespace and spaces before a tab:
match Whitespace /\s\+$\| \+\ze\t/

" Mark 81th column and 120->999 as a guideline
let &colorcolumn="80,".join(range(120,999),",")

"------------------------------------------------
" Colorscheme - Solarized
" https://github.com/altercation/vim-colors-solarized.git
"------------------------------------------------
" For Terminal.app on OS X
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1

set background=dark
"so ~/.vim/bundle/color-solarized/autoload/togglebg.vim
"nnoremap <leader>d :call togglebg()<cr>
nnoremap <leader>d :call SolBackgroundToggle()<cr>
function! SolBackgroundToggle()
    if &background ==# "light"
        setlocal background=dark
    else
        setlocal background=light
    endif
endfunction
colorscheme solarized
