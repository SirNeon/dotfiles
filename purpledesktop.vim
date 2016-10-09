set background=dark
highlight clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name="purpledesktop"
hi Normal guifg=#c5c8c6 guibg=#191d24
hi Comment guifg=#707880 guibg=NONE
hi Constant guifg=#cc6666 guibg=NONE
hi String guifg=#a74c96 guibg=NONE
hi htmlTagName guifg=#ff0000 guibg=NONE
hi Identifier guifg=#99ccff guibg=NONE
hi Statement guifg=#cc6666 guibg=NONE
hi PreProc guifg=#a74c96 guibg=NONE
hi Type guifg=#99ccff guibg=NONE
hi Function guifg=#99ccff guibg=NONE
hi Repeat guifg=#99ccff guibg=NONE
hi Operator guifg=#f0c774 guibg=NONE
hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guibg=#0011ff guifg=#ffffff
hi LineNr guifg=#a74c96 guibg=NONE
hi link character	constant
hi link number	constant
hi link boolean	constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link htmlTag	Special
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
