" Name:         quiet
" Description:  `monochrome`, but less ugly, with diffs, searches, a few other niceties, and both light and dark versions.
" Author:       neutaaaaan <neutaaaaan-gh@protonmail.com>
" Maintainer:   neutaaaaan <neutaaaaan-gh@protonmail.com>
" Website:      https://github.com/vim/colorschemes
" License:      Vim License (see `:help license`)`
" Last Updated: Fri 02 Sep 2022 09:55:30 MSK

" Generated by Colortemplate v2.2.0

hi clear
let g:colors_name = 'quiet'

let s:t_Co = exists('&t_Co') && !has('gui_running') ? (&t_Co ? &t_Co : 0) : -1

hi! link Terminal Normal
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link lCursor Cursor
hi! link debugBreakpoint ModeMsg
hi! link debugPC CursorLine

if &background ==# 'dark'
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#080808', '#d7005f', '#00af5f', '#d78700', '#0087d7', '#d787d7', '#00afaf', '#dadada', '#707070', '#ff005f', '#00d75f', '#ffaf00', '#5fafff', '#ff87ff', '#00d7d7', '#ffffff']
  endif
  hi Normal guifg=#dadada guibg=#080808 gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=#1c1c1c gui=NONE cterm=NONE
  hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi CursorColumn guifg=NONE guibg=#303030 gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#303030 gui=NONE cterm=NONE
  hi CursorLineNr guifg=#dadada guibg=#303030 gui=NONE cterm=NONE
  hi DiffAdd guifg=#00af00 guibg=#080808 gui=reverse cterm=reverse
  hi DiffChange guifg=#87afd7 guibg=#080808 gui=reverse cterm=reverse
  hi DiffDelete guifg=#d75f5f guibg=#080808 gui=reverse cterm=reverse
  hi DiffText guifg=#d787d7 guibg=#080808 gui=reverse cterm=reverse
  hi Directory guifg=#dadada guibg=#080808 gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#dadada guibg=#080808 gui=NONE cterm=NONE
  hi ErrorMsg guifg=#dadada guibg=#080808 gui=reverse cterm=reverse
  hi FoldColumn guifg=#707070 guibg=NONE gui=NONE cterm=NONE
  hi Folded guifg=#707070 guibg=#080808 gui=NONE cterm=NONE
  hi IncSearch guifg=#ffaf00 guibg=#080808 gui=reverse cterm=reverse
  hi LineNr guifg=#444444 guibg=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=#ff00af guibg=NONE gui=bold cterm=bold
  hi ModeMsg guifg=#dadada guibg=NONE gui=bold cterm=bold
  hi MoreMsg guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#707070 guibg=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#080808 guibg=#87afd7 gui=NONE cterm=NONE
  hi PmenuSbar guifg=#dadada guibg=#707070 gui=NONE cterm=NONE
  hi PmenuSel guifg=#080808 guibg=#d787d7 gui=NONE cterm=NONE
  hi PmenuThumb guifg=#dadada guibg=#d787d7 gui=NONE cterm=NONE
  hi Question guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi QuickFixLine guifg=#d787d7 guibg=#080808 gui=reverse cterm=reverse
  hi Search guifg=#00afff guibg=#080808 gui=reverse cterm=reverse
  hi SignColumn guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi SpellBad guifg=#d7005f guibg=NONE guisp=#d7005f gui=undercurl cterm=underline
  hi SpellCap guifg=#0087d7 guibg=NONE guisp=#0087d7 gui=undercurl cterm=underline
  hi SpellLocal guifg=#d787d7 guibg=NONE guisp=#d787d7 gui=undercurl cterm=underline
  hi SpellRare guifg=#00afaf guibg=NONE guisp=#00afaf gui=undercurl cterm=underline
  hi StatusLine guifg=#080808 guibg=#dadada gui=bold cterm=bold
  hi StatusLineNC guifg=#707070 guibg=#080808 gui=underline cterm=underline
  hi TabLine guifg=#707070 guibg=#080808 gui=underline cterm=underline
  hi TabLineFill guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#080808 guibg=#dadada gui=bold cterm=bold
  hi Title guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi VertSplit guifg=#707070 guibg=#080808 gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VisualNOS guifg=NONE guibg=#303030 gui=NONE cterm=NONE
  hi WarningMsg guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi WildMenu guifg=#00afff guibg=#080808 gui=bold cterm=bold
  hi Comment guifg=#707070 guibg=NONE gui=bold cterm=bold
  hi Constant guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Error guifg=#ff005f guibg=#080808 gui=bold,reverse cterm=bold,reverse
  hi Identifier guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=#00ffaf guibg=NONE gui=bold,reverse cterm=bold,reverse
  hi Type guifg=#dadada guibg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#dadada guibg=NONE gui=underline cterm=underline
  hi CursorIM guifg=#080808 guibg=#afff00 gui=NONE cterm=NONE
  hi ToolbarLine guifg=NONE guibg=#080808 gui=NONE cterm=NONE
  hi ToolbarButton guifg=#dadada guibg=#080808 gui=bold cterm=bold
else
  " Light background
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#080808', '#af0000', '#005f00', '#af5f00', '#005faf', '#870087', '#008787', '#d7d7d7', '#626262', '#d70000', '#008700', '#d78700', '#0087d7', '#af00af', '#00afaf', '#ffffff']
  endif
  hi Normal guifg=#080808 guibg=#d7d7d7 gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=#e4e4e4 gui=NONE cterm=NONE
  hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi CursorColumn guifg=NONE guibg=#eeeeee gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#eeeeee gui=NONE cterm=NONE
  hi CursorLineNr guifg=#080808 guibg=#eeeeee gui=NONE cterm=NONE
  hi DiffAdd guifg=#87d787 guibg=#080808 gui=reverse cterm=reverse
  hi DiffChange guifg=#afafd7 guibg=#080808 gui=reverse cterm=reverse
  hi DiffDelete guifg=#d78787 guibg=#080808 gui=reverse cterm=reverse
  hi DiffText guifg=#d787d7 guibg=#080808 gui=reverse cterm=reverse
  hi Directory guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi ErrorMsg guifg=#080808 guibg=#d7d7d7 gui=reverse cterm=reverse
  hi FoldColumn guifg=#626262 guibg=NONE gui=NONE cterm=NONE
  hi Folded guifg=#626262 guibg=#d7d7d7 gui=NONE cterm=NONE
  hi IncSearch guifg=#ffaf00 guibg=#080808 gui=reverse cterm=reverse
  hi LineNr guifg=#a8a8a8 guibg=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=#ff00af guibg=#d7d7d7 gui=bold cterm=bold
  hi ModeMsg guifg=#080808 guibg=NONE gui=bold cterm=bold
  hi MoreMsg guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#626262 guibg=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#080808 guibg=#afafd7 gui=NONE cterm=NONE
  hi PmenuSbar guifg=#080808 guibg=#626262 gui=NONE cterm=NONE
  hi PmenuSel guifg=#080808 guibg=#d787d7 gui=NONE cterm=NONE
  hi PmenuThumb guifg=#080808 guibg=#d787d7 gui=NONE cterm=NONE
  hi Question guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi QuickFixLine guifg=#d787d7 guibg=#080808 gui=reverse cterm=reverse
  hi Search guifg=#00afff guibg=#080808 gui=reverse cterm=reverse
  hi SignColumn guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi SpellBad guifg=#af0000 guibg=#d7d7d7 guisp=#af0000 gui=undercurl cterm=underline
  hi SpellCap guifg=#005faf guibg=#d7d7d7 guisp=#005faf gui=undercurl cterm=underline
  hi SpellLocal guifg=#870087 guibg=#d7d7d7 guisp=#870087 gui=undercurl cterm=underline
  hi SpellRare guifg=#008787 guibg=#d7d7d7 guisp=#008787 gui=undercurl cterm=underline
  hi StatusLine guifg=#eeeeee guibg=#080808 gui=bold cterm=bold
  hi StatusLineNC guifg=#080808 guibg=#a8a8a8 gui=NONE cterm=NONE
  hi TabLine guifg=#080808 guibg=#a8a8a8 gui=NONE cterm=NONE
  hi TabLineFill guifg=#080808 guibg=#d7d7d7 gui=NONE cterm=NONE
  hi TabLineSel guifg=#eeeeee guibg=#080808 gui=bold cterm=bold
  hi Title guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi VertSplit guifg=#626262 guibg=#d7d7d7 gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi VisualNOS guifg=NONE guibg=#eeeeee gui=NONE cterm=NONE
  hi WarningMsg guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi WildMenu guifg=#080808 guibg=#eeeeee gui=bold cterm=bold
  hi Comment guifg=#080808 guibg=NONE gui=bold cterm=bold
  hi Constant guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi Error guifg=#ff005f guibg=#080808 gui=bold,reverse cterm=bold,reverse
  hi Identifier guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=#00ffaf guibg=#080808 gui=bold,reverse cterm=bold,reverse
  hi Type guifg=#080808 guibg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#080808 guibg=NONE gui=underline cterm=underline
  hi CursorIM guifg=#080808 guibg=#afff00 gui=NONE cterm=NONE
  hi ToolbarLine guifg=NONE guibg=#d7d7d7 gui=NONE cterm=NONE
  hi ToolbarButton guifg=#080808 guibg=#d7d7d7 gui=bold cterm=bold
endif

if s:t_Co >= 256
  if &background ==# 'dark'
    hi Normal ctermfg=253 ctermbg=232 cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
    hi CursorLineNr ctermfg=253 ctermbg=236 cterm=NONE
    hi DiffAdd ctermfg=34 ctermbg=232 cterm=reverse
    hi DiffChange ctermfg=110 ctermbg=232 cterm=reverse
    hi DiffDelete ctermfg=167 ctermbg=232 cterm=reverse
    hi DiffText ctermfg=176 ctermbg=232 cterm=reverse
    hi Directory ctermfg=253 ctermbg=232 cterm=NONE
    hi EndOfBuffer ctermfg=253 ctermbg=232 cterm=NONE
    hi ErrorMsg ctermfg=253 ctermbg=232 cterm=reverse
    hi FoldColumn ctermfg=242 ctermbg=NONE cterm=NONE
    hi Folded ctermfg=242 ctermbg=232 cterm=NONE
    hi IncSearch ctermfg=214 ctermbg=232 cterm=reverse
    hi LineNr ctermfg=238 ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=199 ctermbg=NONE cterm=bold
    hi ModeMsg ctermfg=253 ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=253 ctermbg=NONE cterm=NONE
    hi NonText ctermfg=242 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=232 ctermbg=110 cterm=NONE
    hi PmenuSbar ctermfg=253 ctermbg=242 cterm=NONE
    hi PmenuSel ctermfg=232 ctermbg=176 cterm=NONE
    hi PmenuThumb ctermfg=253 ctermbg=176 cterm=NONE
    hi Question ctermfg=253 ctermbg=NONE cterm=NONE
    hi QuickFixLine ctermfg=176 ctermbg=232 cterm=reverse
    hi Search ctermfg=39 ctermbg=232 cterm=reverse
    hi SignColumn ctermfg=253 ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=253 ctermbg=NONE cterm=NONE
    hi SpellBad ctermfg=161 ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=32 ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=176 ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=37 ctermbg=NONE cterm=underline
    hi StatusLine ctermfg=232 ctermbg=253 cterm=bold
    hi StatusLineNC ctermfg=242 ctermbg=232 cterm=underline
    hi TabLine ctermfg=242 ctermbg=232 cterm=underline
    hi TabLineFill ctermfg=253 ctermbg=NONE cterm=NONE
    hi TabLineSel ctermfg=232 ctermbg=253 cterm=bold
    hi Title ctermfg=253 ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=242 ctermbg=232 cterm=NONE
    hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=236 cterm=NONE
    hi WarningMsg ctermfg=253 ctermbg=NONE cterm=NONE
    hi WildMenu ctermfg=39 ctermbg=232 cterm=bold
    hi Comment ctermfg=242 ctermbg=NONE cterm=bold
    hi Constant ctermfg=253 ctermbg=NONE cterm=NONE
    hi Error ctermfg=197 ctermbg=232 cterm=bold,reverse
    hi Identifier ctermfg=253 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=253 ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=253 ctermbg=NONE cterm=NONE
    hi Special ctermfg=253 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=253 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=49 ctermbg=NONE cterm=bold,reverse
    hi Type ctermfg=253 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=253 ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=232 ctermbg=154 cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=232 cterm=NONE
    hi ToolbarButton ctermfg=253 ctermbg=232 cterm=bold
  else
    " Light background
    hi Normal ctermfg=232 ctermbg=188 cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=254 cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=255 cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=255 cterm=NONE
    hi CursorLineNr ctermfg=232 ctermbg=255 cterm=NONE
    hi DiffAdd ctermfg=114 ctermbg=232 cterm=reverse
    hi DiffChange ctermfg=146 ctermbg=232 cterm=reverse
    hi DiffDelete ctermfg=174 ctermbg=232 cterm=reverse
    hi DiffText ctermfg=176 ctermbg=232 cterm=reverse
    hi Directory ctermfg=232 ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=232 ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=232 ctermbg=188 cterm=reverse
    hi FoldColumn ctermfg=241 ctermbg=NONE cterm=NONE
    hi Folded ctermfg=241 ctermbg=188 cterm=NONE
    hi IncSearch ctermfg=214 ctermbg=232 cterm=reverse
    hi LineNr ctermfg=248 ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=199 ctermbg=188 cterm=bold
    hi ModeMsg ctermfg=232 ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=232 ctermbg=NONE cterm=NONE
    hi NonText ctermfg=241 ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=232 ctermbg=146 cterm=NONE
    hi PmenuSbar ctermfg=232 ctermbg=241 cterm=NONE
    hi PmenuSel ctermfg=232 ctermbg=176 cterm=NONE
    hi PmenuThumb ctermfg=232 ctermbg=176 cterm=NONE
    hi Question ctermfg=232 ctermbg=NONE cterm=NONE
    hi QuickFixLine ctermfg=176 ctermbg=232 cterm=reverse
    hi Search ctermfg=39 ctermbg=232 cterm=reverse
    hi SignColumn ctermfg=232 ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=232 ctermbg=NONE cterm=NONE
    hi SpellBad ctermfg=124 ctermbg=188 cterm=underline
    hi SpellCap ctermfg=25 ctermbg=188 cterm=underline
    hi SpellLocal ctermfg=90 ctermbg=188 cterm=underline
    hi SpellRare ctermfg=30 ctermbg=188 cterm=underline
    hi StatusLine ctermfg=255 ctermbg=232 cterm=bold
    hi StatusLineNC ctermfg=232 ctermbg=248 cterm=NONE
    hi TabLine ctermfg=232 ctermbg=248 cterm=NONE
    hi TabLineFill ctermfg=232 ctermbg=188 cterm=NONE
    hi TabLineSel ctermfg=255 ctermbg=232 cterm=bold
    hi Title ctermfg=232 ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=241 ctermbg=188 cterm=NONE
    hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=255 cterm=NONE
    hi WarningMsg ctermfg=232 ctermbg=NONE cterm=NONE
    hi WildMenu ctermfg=232 ctermbg=255 cterm=bold
    hi Comment ctermfg=232 ctermbg=NONE cterm=bold
    hi Constant ctermfg=232 ctermbg=NONE cterm=NONE
    hi Error ctermfg=197 ctermbg=232 cterm=bold,reverse
    hi Identifier ctermfg=232 ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=232 ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=232 ctermbg=NONE cterm=NONE
    hi Special ctermfg=232 ctermbg=NONE cterm=NONE
    hi Statement ctermfg=232 ctermbg=NONE cterm=NONE
    hi Todo ctermfg=49 ctermbg=232 cterm=bold,reverse
    hi Type ctermfg=232 ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=232 ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=232 ctermbg=154 cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=188 cterm=NONE
    hi ToolbarButton ctermfg=232 ctermbg=188 cterm=bold
  endif
  unlet s:t_Co
  finish
endif

if s:t_Co >= 16
  if &background ==# 'dark'
    hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=bold
    hi DiffAdd ctermfg=darkgreen ctermbg=black cterm=reverse
    hi DiffChange ctermfg=darkblue ctermbg=black cterm=reverse
    hi DiffDelete ctermfg=darkred ctermbg=black cterm=reverse
    hi DiffText ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Folded ctermfg=NONE ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=darkyellow ctermbg=black cterm=bold,reverse,underline
    hi LineNr ctermfg=NONE ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuSel ctermfg=NONE ctermbg=NONE cterm=bold
    hi PmenuThumb ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Question ctermfg=NONE ctermbg=NONE cterm=standout
    hi QuickFixLine ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi Search ctermfg=darkcyan ctermbg=black cterm=reverse
    hi SignColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi SpecialKey ctermfg=NONE ctermbg=NONE cterm=bold
    hi SpellBad ctermfg=darkred ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=darkblue ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=darkmagenta ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=darkcyan ctermbg=NONE cterm=underline
    hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi TabLine ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
    hi TabLineSel ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=standout
    hi WildMenu ctermfg=NONE ctermbg=NONE cterm=bold
    hi Comment ctermfg=NONE ctermbg=NONE cterm=bold
    hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Error ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Special ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Statement ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Todo ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Type ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=reverse
    hi ToolbarButton ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  else
    " Light background
    hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=bold
    hi DiffAdd ctermfg=darkgreen ctermbg=black cterm=reverse
    hi DiffChange ctermfg=darkblue ctermbg=black cterm=reverse
    hi DiffDelete ctermfg=darkred ctermbg=black cterm=reverse
    hi DiffText ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Folded ctermfg=NONE ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=darkyellow ctermbg=black cterm=bold,reverse,underline
    hi LineNr ctermfg=NONE ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuSel ctermfg=NONE ctermbg=NONE cterm=bold
    hi PmenuThumb ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Question ctermfg=NONE ctermbg=NONE cterm=standout
    hi QuickFixLine ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi Search ctermfg=darkcyan ctermbg=black cterm=reverse
    hi SignColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi SpecialKey ctermfg=NONE ctermbg=NONE cterm=bold
    hi SpellBad ctermfg=darkred ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=darkblue ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=darkmagenta ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=darkcyan ctermbg=NONE cterm=underline
    hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi TabLine ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
    hi TabLineSel ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=standout
    hi WildMenu ctermfg=NONE ctermbg=NONE cterm=bold
    hi Comment ctermfg=NONE ctermbg=NONE cterm=bold
    hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Error ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Special ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Statement ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Todo ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Type ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=reverse
    hi ToolbarButton ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  endif
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  if &background ==# 'dark'
    hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=bold
    hi DiffAdd ctermfg=darkgreen ctermbg=black cterm=reverse
    hi DiffChange ctermfg=darkblue ctermbg=black cterm=reverse
    hi DiffDelete ctermfg=darkred ctermbg=black cterm=reverse
    hi DiffText ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Folded ctermfg=NONE ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=darkyellow ctermbg=black cterm=bold,reverse,underline
    hi LineNr ctermfg=NONE ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuSel ctermfg=NONE ctermbg=NONE cterm=bold
    hi PmenuThumb ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Question ctermfg=NONE ctermbg=NONE cterm=standout
    hi QuickFixLine ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi Search ctermfg=darkcyan ctermbg=black cterm=reverse
    hi SignColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi SpecialKey ctermfg=NONE ctermbg=NONE cterm=bold
    hi SpellBad ctermfg=darkred ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=darkblue ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=darkmagenta ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=darkcyan ctermbg=NONE cterm=underline
    hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi TabLine ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
    hi TabLineSel ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=standout
    hi WildMenu ctermfg=NONE ctermbg=NONE cterm=bold
    hi Comment ctermfg=NONE ctermbg=NONE cterm=bold
    hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Error ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Special ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Statement ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Todo ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Type ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=reverse
    hi ToolbarButton ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  else
    " Light background
    hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE
    hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=bold
    hi DiffAdd ctermfg=darkgreen ctermbg=black cterm=reverse
    hi DiffChange ctermfg=darkblue ctermbg=black cterm=reverse
    hi DiffDelete ctermfg=darkred ctermbg=black cterm=reverse
    hi DiffText ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Folded ctermfg=NONE ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=darkyellow ctermbg=black cterm=bold,reverse,underline
    hi LineNr ctermfg=NONE ctermbg=NONE cterm=NONE
    hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
    hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Pmenu ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=reverse
    hi PmenuSel ctermfg=NONE ctermbg=NONE cterm=bold
    hi PmenuThumb ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Question ctermfg=NONE ctermbg=NONE cterm=standout
    hi QuickFixLine ctermfg=darkmagenta ctermbg=black cterm=reverse
    hi Search ctermfg=darkcyan ctermbg=black cterm=reverse
    hi SignColumn ctermfg=NONE ctermbg=NONE cterm=reverse
    hi SpecialKey ctermfg=NONE ctermbg=NONE cterm=bold
    hi SpellBad ctermfg=darkred ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=darkblue ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=darkmagenta ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=darkcyan ctermbg=NONE cterm=underline
    hi StatusLine ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi StatusLineNC ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi TabLine ctermfg=NONE ctermbg=NONE cterm=bold,underline
    hi TabLineFill ctermfg=NONE ctermbg=NONE cterm=NONE
    hi TabLineSel ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Visual ctermfg=NONE ctermbg=NONE cterm=reverse
    hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=standout
    hi WildMenu ctermfg=NONE ctermbg=NONE cterm=bold
    hi Comment ctermfg=NONE ctermbg=NONE cterm=bold
    hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Error ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Identifier ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
    hi PreProc ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Special ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Statement ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Todo ctermfg=NONE ctermbg=NONE cterm=bold,reverse
    hi Type ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorIM ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=reverse
    hi ToolbarButton ctermfg=NONE ctermbg=NONE cterm=bold,reverse
  endif
  unlet s:t_Co
  finish
endif

if s:t_Co >= 0
  hi Normal term=NONE
  hi ColorColumn term=reverse
  hi Conceal term=NONE
  hi Cursor term=reverse
  hi CursorColumn term=NONE
  hi CursorLine term=underline
  hi CursorLineNr term=bold
  hi DiffAdd term=reverse
  hi DiffChange term=NONE
  hi DiffDelete term=reverse
  hi DiffText term=reverse
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi ErrorMsg term=bold,reverse
  hi FoldColumn term=NONE
  hi Folded term=NONE
  hi IncSearch term=bold,reverse,underline
  hi LineNr term=NONE
  hi MatchParen term=bold,underline
  hi ModeMsg term=bold
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=reverse
  hi PmenuSel term=bold
  hi PmenuThumb term=NONE
  hi Question term=standout
  hi Search term=reverse
  hi SignColumn term=reverse
  hi SpecialKey term=bold
  hi SpellBad term=underline
  hi SpellCap term=underline
  hi SpellLocal term=underline
  hi SpellRare term=underline
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=bold,underline
  hi TabLine term=bold,underline
  hi TabLineFill term=NONE
  hi Terminal term=NONE
  hi TabLineSel term=bold,reverse
  hi Title term=NONE
  hi VertSplit term=NONE
  hi Visual term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  hi CursorIM term=NONE
  hi ToolbarLine term=reverse
  hi ToolbarButton term=bold,reverse
  hi CurSearch term=reverse
  hi CursorLineFold term=underline
  hi CursorLineSign term=underline
  hi Comment term=bold
  hi Constant term=NONE
  hi Error term=bold,reverse
  hi Identifier term=NONE
  hi Ignore term=NONE
  hi PreProc term=NONE
  hi Special term=NONE
  hi Statement term=NONE
  hi Todo term=bold,reverse
  hi Type term=NONE
  hi Underlined term=underline
  unlet s:t_Co
  finish
endif

" Background: dark
" Color: dark0         #080808           232               black
" Color: dark1         #d7005f           161               darkred
" Color: dark2         #00af5f           35                darkgreen
" Color: dark3         #d78700           172               darkyellow
" Color: dark4         #0087d7           32                darkblue
" Color: dark5         #d787d7           176               darkmagenta
" Color: dark6         #00afaf           37                darkcyan
" Color: dark7         #dadada           253               grey
" Color: dark8         #707070           242               darkgrey
" Color: dark9         #ff005f           197               red
" Color: dark10        #00d75f           41                green
" Color: dark11        #ffaf00           214               yellow
" Color: dark12        #5fafff           75                blue
" Color: dark13        #ff87ff           213               magenta
" Color: dark14        #00d7d7           44                cyan
" Color: dark15        #ffffff           231               white
" Color: diffred       #d75f5f           167               darkred
" Color: diffgreen     #00af00           34                darkgreen
" Color: diffblue      #87afd7           110               darkblue
" Color: diffpink 	   #d787d7           176               darkmagenta
" Color: uipink        #ff00af           199               magenta
" Color: uilime        #afff00           154               green
" Color: uiteal        #00ffaf           49                green
" Color: uiblue        #00afff           39                blue
" Color: uipurple      #af00ff           129               darkmagenta
" Color: uiamber       #ffaf00           214               darkyellow
" Color: uiblack       #303030           236               darkgrey
" Color: yasogrey      #1c1c1c           234               black
" Color: linenrblack   #444444           238               darkgrey
" Color: errorred      #ff005f           197               red
" Term colors: dark0 dark1 dark2 dark3 dark4 dark5 dark6 dark7
" Term colors: dark8 dark9 dark10 dark11 dark12 dark13 dark14 dark15
" Background: light
" Color: brightwhite   #eeeeee           255               grey
" Color: light0        #080808           232               black
" Color: light1        #af0000           124               darkred
" Color: light2        #005f00           22                darkgreen
" Color: light3        #af5f00           130               darkyellow
" Color: light4        #005faf           25                darkblue
" Color: light5        #870087           90                darkmagenta
" Color: light6        #008787           30                darkcyan
" Color: light7        #d7d7d7           188               grey
" Color: light8        #626262           241               darkgrey
" Color: light9        #d70000           160               red
" Color: light10       #008700           28                green
" Color: light11       #d78700           172               yellow
" Color: light12       #0087d7           32                blue
" Color: light13       #af00af           127               magenta
" Color: light14       #00afaf           37                cyan
" Color: light15       #ffffff           231               white
" Color: diffred       #d78787           174               red
" Color: diffgreen     #87d787           114               green
" Color: diffblue      #afafd7           146               blue
" Color: diffpink      #d787d7           176               magenta
" Color: uipink        #ff00af           199               magenta
" Color: uilime        #afff00           154               green
" Color: uiteal        #00ffaf           49                cyan
" Color: uiblue        #00afff           39                blue
" Color: uipurple      #af00ff           129               darkmagenta
" Color: uiamber       #ffaf00           214               yellow
" Color: invisigrey    #a8a8a8           248               darkgrey
" Color: yasogrey      #e4e4e4           254               grey
" Color: errorred      #ff005f           197               red
" Term colors: light0 light1 light2 light3 light4 light5 light6 light7
" Term colors: light8 light9 light10 light11 light12 light13 light14 light15
" Background: any
" vim: et ts=2 sw=2
