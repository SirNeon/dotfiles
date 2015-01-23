set number
filetype plugin indent on
syntax on
set tabstop=4
set shiftwidth=4
set showmatch
set hlsearch
set autoindent
set textwidth=80
set bs=2
set background=dark
colorscheme cherry-blossom-theme

noremap a h
" move left
noremap o k
" move down
noremap e j
" move up
noremap u l
" move right

noremap h w
" move forwards a word
noremap t b
" move back a word
noremap n e
" move forwards to the end of a word
noremap s 0
" move to the end of the line

noremap . o
" insert a newline below the current line
noremap , u
" undo the last action
noremap - $
" move to the start of the line
noremap k a
" insert after cursor

noremap <C-Tab> :bnext<cr>
" ctrl+tab shifts to the next buffer
noremap <C-S-Tab> :bprevious<cr>
" ctrl+shift+tab shifts to the previous buffer
noremap <C-a> <C-w><Left>
" ctrl+a to move to the window on the left
noremap <C-e> <C-w><Down>
" ctrl+e to move to the window below
noremap <C-o> <C-w><Up>
" ctrl+o to move to the window above
noremap <C-u> <C-w><Right>
" ctrl+u to move to the window on the right

noremap <S-a> ggVG
" shift+a selects all
noremap <S-c> <"-y>
" shift+c copies selected text
