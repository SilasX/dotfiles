execute pathogen#infect()
set autoindent
set incsearch
syn on
set smartindent
set cindent
nmap <tab> <C-w>
map! ;j <Esc>
map <Space> <C-b> 
map <CR> <C-f>
map <C-o> <C-^>
imap <C-Space> <C-X><C-O>
set ts=2
set number
filetype plugin on
set grepprg=grep\ -nH\ $*
set list
filetype indent on
colorscheme inkpot
"set t_Co=256
let g:tex_flavor='latex'
hi MatchParen cterm=none ctermbg=none ctermfg=green
au BufRead,BufNewFile *.jsm setfiletype javascript
augroup filetypedetect
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
  au BufNewFile,BufRead *.elm set filetype=elm syntax=elm
  au BufNewFile,BufRead *.mustache set filetype=html syntax=html
augroup END 
augroup HSK
        au Bufenter *.hs compiler ghc
        autocmd FileType haskell setlocal formatoptions+=t
        autocmd FileType haskell let b:ghc_staticoptions = '-Wall -Werror'
augroup END
