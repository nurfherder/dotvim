" Set Favorite Font Depending on OS
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h16
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Remove Extra Graphical Stuff
set guioptions+=imTrL
set guioptions-=mTrL
