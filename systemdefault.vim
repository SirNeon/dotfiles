set background=dark
highlight clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name="systemdefault"
hi Normal ctermfg=15 ctermbg=NONE
hi Comment ctermfg=6 ctermbg=NONE
hi Constant ctermfg=9 ctermbg=NONE
hi String ctermfg=2 ctermbg=NONE
hi htmlTagName ctermfg=9 ctermbg=NONE
hi Identifier ctermfg=12 ctermbg=NONE
hi Statement ctermfg=9 ctermbg=NONE
hi PreProc ctermfg=13 ctermbg=NONE
hi Type ctermfg=14 ctermbg=NONE
hi Function ctermfg=12 ctermbg=NONE
hi Repeat ctermfg=4 ctermbg=NONE
hi Operator ctermfg=11 ctermbg=NONE
hi Error ctermbg=9 ctermfg=15
hi TODO ctermbg=13 ctermfg=15
hi LineNr ctermfg=4 ctermbg=NONE
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
