" set tabs to 4 spaces
autocmd FileType c setlocal tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType cpp setlocal tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType python setlocal tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType xml setlocal tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" highlight long lines in red
"highlight OverLength ctermbg=131
"ctermfg=white
"match OverLength /\%81v.\+/

highlight ColorColumn ctermbg=red
set colorcolumn=81

set number
