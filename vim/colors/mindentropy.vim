" Vim color file
" Maintainer:	mindentropy <mindentropy at gmail dot com>
" Last Change:	2017 May 27
"
" Inspiration and modification of the base file taken from eclipse.vim by Juan
" Frias
"
" Color matching done using colorsafe.co http://colorsafe.co
"
set background=light
highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "mindentropy"

highlight Normal gui=none guifg=#181818 guibg=#f9f9f9 ctermfg=White

" Search
highlight IncSearch gui=underline guifg=#404040 guibg=#e0e040
highlight Search    gui=none      guifg=#544060 guibg=#f0c0ff ctermbg=1

" Messages
highlight ErrorMsg   gui=none guifg=#f8f8f8 guibg=#4040ff
highlight WarningMsg gui=none guifg=#f8f8f8 guibg=#4040ff
highlight ModeMsg    gui=none guifg=#d06000 guibg=bg
highlight MoreMsg    gui=none guifg=#0090a0 guibg=bg
highlight Question   gui=none guifg=#8000ff guibg=bg

" Split area
highlight StatusLine   gui=none guifg=#ffffff guibg=#4570aa cterm=bold       ctermbg=blue     ctermfg=white
highlight StatusLineNC gui=none guifg=#ffffff guibg=#75a0da cterm=none       ctermfg=darkgrey 	ctermbg=blue
highlight VertSplit    gui=none guifg=#f8f8f8 guibg=#904838 ctermfg=darkgrey cterm=none       ctermbg=blue
highlight WildMenu     gui=none guifg=#f8f8f8 guibg=#ff3030

" Diff
highlight DiffText   gui=none guifg=red   guibg=#ffd0d0 cterm=bold    ctermbg=5  ctermfg=3
highlight DiffChange gui=none guifg=black guibg=#ffe7e7 cterm=none    ctermbg=5  ctermfg=7
highlight DiffDelete gui=none guifg=bg    guibg=#e7e7ff ctermbg=black
highlight DiffAdd    gui=none guifg=blue  guibg=#e7e7ff ctermbg=green cterm=bold

" Cursor
highlight Cursor   gui=none guifg=#ffffff guibg=#0DB0DE
highlight lCursor  gui=none guifg=#ffffff guibg=#8040ff
highlight CursorIM gui=none guifg=#ffffff guibg=#8040ff

" Fold
highlight Folded     gui=none guifg=#804030 guibg=#fff0d0 ctermbg=black ctermfg=black cterm=bold
highlight FoldColumn gui=none guifg=#6b6b6b guibg=#e7e7e7 ctermfg=black ctermbg=white

" Popup Menu
highlight PMenu      ctermbg=green ctermfg=white
highlight PMenuSel   ctermbg=white ctermfg=black
highlight PMenuSBar  ctermbg=red   ctermfg=white
highlight PMenuThumb ctermbg=white ctermfg=red

" Other
highlight Directory  gui=none guifg=#3a2984 guibg=bg
highlight LineNr     gui=none guifg=#d05d10 guibg=#eeeeee
highlight NonText    gui=none guifg=#707070 guibg=#eeeeee
highlight SpecialKey gui=none guifg=#c0c0c0 guibg=bg      cterm=none       ctermfg=4
highlight Title      gui=bold guifg=#1b88cc guibg=bg
highlight Visual     gui=none guifg=#002627 guibg=#ffb70f ctermfg=DarkCyan

" Syntax group
highlight Comment    gui=none guifg=#555555 guibg=bg      ctermfg=2
highlight Constant   gui=none guifg=#00884c guibg=bg      ctermfg=White
highlight Error      gui=none guifg=#f8f8f8 guibg=#4040ff term=reverse ctermbg=Red    ctermfg=White
highlight Identifier gui=none guifg=#b6890b guibg=bg      ctermfg=Green
highlight Ignore     gui=none guifg=bg      guibg=bg      ctermfg=black
highlight PreProc    gui=none guifg=#1B4F7F guibg=bg      ctermfg=Green
highlight Special    gui=none guifg=#0f69a1 guibg=bg      ctermfg=DarkMagenta
"highlight Statement  gui=none guifg=#7d314c guibg=bg      ctermfg=White
highlight Statement  gui=none guifg=#8b0000 guibg=bg      ctermfg=White
highlight Todo       gui=none guifg=#ff5050 guibg=#eeeeee   term=standout ctermbg=Yellow ctermfg=Black
highlight Type       gui=none guifg=#445588 guibg=bg      ctermfg=12
highlight Underlined gui=none guifg=blue    guibg=bg
highlight String     gui=none guifg=#007a7c guibg=bg      ctermfg=Yellow
highlight Number     gui=none guifg=#db0a5b guibg=bg      ctermfg=White
highlight StorageClass gui=none guifg=#aa0000 guibg=bg	ctermfg=White
highlight Label gui=none guifg=#008080 guibg=bg ctermfg=White
highlight Function gui=none guifg=#114c2a guibg=bg ctermfg=Black
highlight Operator guifg=#d43900

if !has("gui_running")
    hi link Float          Number
    hi link Conditional    Repeat
    hi link Include        PreProc
    hi link Macro          PreProc
    hi link PreCondit      PreProc
"    hi link StorageClass   Type
    hi link Structure      Type
    hi link Typedef        Type
    hi link Tag            Special
    hi link Delimiter      Normal
    hi link SpecialComment Special
    hi link Debug          Special
endif

" vim:ff=unix:
