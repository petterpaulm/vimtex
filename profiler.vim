set nocompatible
let &rtp = '~/.vim/bundle/vimtex,' . &rtp
let &rtp .= ',~/.vim/bundle/vimtex/after'
filetype plugin indent on
syntax enable

nnoremap q :qall!<cr>

" call delete('test.log')
profile start test.log
profile func *
profile file *

silent edit test.tex
silent edit ~/sintef/memos/2017-11-22_rpt_boiling-curve/boilingcurve.tex

profile stop
quit!

" let s:prof = readfile('test.log')
" call filter(s:prof, 'v:val !~# ''FTtex''')
" call filter(s:prof, 'v:val !~# ''LoadFTPlugin''')
" let s:counter = 0
" for s:line in s:prof
"   if s:line =~# 'FUNCTIONS SORTED ON TOTAL'
"     echo "\r"
"     let s:counter = 8
"   elseif s:line =~# 'FUNCTIONS SORTED ON SELF'
"     echo "\r"
"     let s:counter = 8
"   elseif s:line =~# 'FUNCTION  7'
"     echo "\r"
"     let s:counter = 20
"   endif
  
"   if s:counter
"     echo s:line
"     let s:counter -= 1
"   endif
" endfor
" echo ''
" quit