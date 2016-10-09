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
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:𐤟
set list
colorscheme vimpurpledesktop

noremap a h
" move left
noremap s k
" move down
noremap h j
" move up
noremap t l
" move right

noremap n w
" move forwards a word
noremap e b
" move back a word
noremap o e
" move forwards to the end of a word
noremap i 0
" move to the end of the line

noremap r o
" insert a newline below the current line
noremap d u
" undo the last action
noremap ' $
" move to the start of the line
noremap c a
" insert after cursor

noremap <C-Tab> :bnext<cr>
" ctrl+tab shifts to the next buffer
noremap <C-S-Tab> :bprevious<cr>
" ctrl+shift+tab shifts to the previous buffer
noremap <C-a> <C-w><Left>
" ctrl+a to move to the window on the left
noremap <C-s> <C-w><Down>
" ctrl+h to move to the window below
noremap <C-h> <C-w><Up>
" ctrl+s to move to the window above
noremap <C-t> <C-w><Right>
" ctrl+t to move to the window on the right

noremap <S-a> ggVG
" shift+a selects all
noremap <S-c> <"-y>
" shift+c copies the selected text
noremap y I
" go into insert mode
