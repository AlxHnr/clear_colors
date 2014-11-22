" Copyright (c) 2014 Alexander Heinrich <alxhnr@nudelpost.de> {{{
"
" This software is provided 'as-is', without any express or implied
" warranty. In no event will the authors be held liable for any damages
" arising from the use of this software.
"
" Permission is granted to anyone to use this software for any purpose,
" including commercial applications, and to alter it and redistribute it
" freely, subject to the following restrictions:
"
"    1. The origin of this software must not be misrepresented; you must
"       not claim that you wrote the original software. If you use this
"       software in a product, an acknowledgment in the product
"       documentation would be appreciated but is not required.
"
"    2. Altered source versions must be plainly marked as such, and must
"       not be misrepresented as being the original software.
"
"    3. This notice may not be removed or altered from any source
"       distribution.
" }}}

" xterm color table. {{{
" derived from: upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
let s:xterm_colormap =
  \ {
  \   16  : '#000000', 17  : '#00005F', 18  : '#000087',
  \   19  : '#0000AF', 20  : '#0000D7', 21  : '#0000FF',
  \   22  : '#005F00', 23  : '#005F5F', 24  : '#005F87',
  \   25  : '#005FAF', 26  : '#005FD7', 27  : '#005FFF',
  \   28  : '#008700', 29  : '#00875F', 30  : '#008787',
  \   31  : '#0087AF', 32  : '#0087D7', 33  : '#0087FF',
  \   34  : '#00AF00', 35  : '#00AF5F', 36  : '#00AF87',
  \   37  : '#00AFAF', 38  : '#00AFD7', 39  : '#00AFFF',
  \   40  : '#00D700', 41  : '#00D75F', 42  : '#00D787',
  \   43  : '#00D7AF', 44  : '#00D7D7', 45  : '#00D7FF',
  \   46  : '#00FF00', 47  : '#00FF5F', 48  : '#00FF87',
  \   49  : '#00FFAF', 50  : '#00FFD7', 51  : '#00FFFF',
  \   82  : '#5FFF00', 83  : '#5FFF5F', 84  : '#5FFF87',
  \   85  : '#5FFFAF', 86  : '#5FFFD7', 87  : '#5FFFFF',
  \   76  : '#5FD700', 77  : '#5FD75F', 78  : '#5FD787',
  \   79  : '#5FD7AF', 80  : '#5FD7D7', 81  : '#5FD7FF',
  \   70  : '#5FAF00', 71  : '#5FAF5F', 72  : '#5FAF87',
  \   73  : '#5FAFAF', 74  : '#5FAFD7', 75  : '#5FAFFF',
  \   64  : '#5F8700', 65  : '#5F875F', 66  : '#5F8787',
  \   67  : '#5F87AF', 68  : '#5F87D7', 69  : '#5F87FF',
  \   58  : '#5F5F00', 59  : '#5F5F5F', 60  : '#5F5F87',
  \   61  : '#5F5FAF', 62  : '#5F5FD7', 63  : '#5F5FFF',
  \   52  : '#5F0000', 53  : '#5F005F', 54  : '#5F0087',
  \   55  : '#5F00AF', 56  : '#5F00D7', 57  : '#5F00FF',
  \   93  : '#8700FF', 92  : '#8700D7', 91  : '#8700AF',
  \   90  : '#870087', 89  : '#87005F', 88  : '#870000',
  \   99  : '#875FFF', 98  : '#875FD7', 97  : '#875FAF',
  \   96  : '#875F87', 95  : '#875F5F', 94  : '#875F00',
  \   105 : '#8787FF', 104 : '#8787D7', 103 : '#8787AF',
  \   102 : '#878787', 101 : '#87875F', 100 : '#878700',
  \   111 : '#87AFFF', 110 : '#87AFD7', 109 : '#87AFAF',
  \   108 : '#87AF87', 107 : '#87AF5F', 106 : '#87AF00',
  \   117 : '#87D7FF', 116 : '#87D7D7', 115 : '#87D7AF',
  \   114 : '#87D787', 113 : '#87D75F', 112 : '#87D700',
  \   123 : '#87FFFF', 122 : '#87FFD7', 121 : '#87FFAF',
  \   120 : '#87FF87', 119 : '#87FF5F', 118 : '#87FF00',
  \   159 : '#AFFFFF', 158 : '#AFFFD7', 157 : '#AFFFAF',
  \   156 : '#AFFF87', 155 : '#AFFF5F', 154 : '#AFFF00',
  \   153 : '#AFD7FF', 152 : '#AFD7D7', 151 : '#AFD7AF',
  \   150 : '#AFD787', 149 : '#AFD75F', 148 : '#AFD700',
  \   147 : '#AFAFFF', 146 : '#AFAFD7', 145 : '#AFAFAF',
  \   144 : '#AFAF87', 143 : '#AFAF5F', 142 : '#AFAF00',
  \   141 : '#AF87FF', 140 : '#AF87D7', 139 : '#AF87AF',
  \   138 : '#AF8787', 137 : '#AF875F', 136 : '#AF8700',
  \   135 : '#AF5FFF', 134 : '#AF5FD7', 133 : '#AF5FAF',
  \   132 : '#AF5F87', 131 : '#AF5F5F', 130 : '#AF5F00',
  \   129 : '#AF00FF', 128 : '#AF00D7', 127 : '#AF00AF',
  \   126 : '#AF0087', 125 : '#AF005F', 124 : '#AF0000',
  \   160 : '#D70000', 161 : '#D7005F', 162 : '#D70087',
  \   163 : '#D700AF', 164 : '#D700D7', 165 : '#D700FF',
  \   166 : '#D75F00', 167 : '#D75F5F', 168 : '#D75F87',
  \   169 : '#D75FAF', 170 : '#D75FD7', 171 : '#D75FFF',
  \   172 : '#D78700', 173 : '#D7875F', 174 : '#D78787',
  \   175 : '#D787AF', 176 : '#D787D7', 177 : '#D787FF',
  \   178 : '#DFAF00', 179 : '#DFAF5F', 180 : '#DFAF87',
  \   181 : '#DFAFAF', 182 : '#DFAFDF', 183 : '#DFAFFF',
  \   184 : '#DFDF00', 185 : '#DFDF5F', 186 : '#DFDF87',
  \   187 : '#DFDFAF', 188 : '#DFDFDF', 189 : '#DFDFFF',
  \   190 : '#DFFF00', 191 : '#DFFF5F', 192 : '#DFFF87',
  \   193 : '#DFFFAF', 194 : '#DFFFDF', 195 : '#DFFFFF',
  \   226 : '#FFFF00', 227 : '#FFFF5F', 228 : '#FFFF87',
  \   229 : '#FFFFAF', 230 : '#FFFFDF', 231 : '#FFFFFF',
  \   220 : '#FFDF00', 221 : '#FFDF5F', 222 : '#FFDF87',
  \   223 : '#FFDFAF', 224 : '#FFDFDF', 225 : '#FFDFFF',
  \   214 : '#FFAF00', 215 : '#FFAF5F', 216 : '#FFAF87',
  \   217 : '#FFAFAF', 218 : '#FFAFDF', 219 : '#FFAFFF',
  \   208 : '#FF8700', 209 : '#FF875F', 210 : '#FF8787',
  \   211 : '#FF87AF', 212 : '#FF87DF', 213 : '#FF87FF',
  \   202 : '#FF5F00', 203 : '#FF5F5F', 204 : '#FF5F87',
  \   205 : '#FF5FAF', 206 : '#FF5FDF', 207 : '#FF5FFF',
  \   196 : '#FF0000', 197 : '#FF005F', 198 : '#FF0087',
  \   199 : '#FF00AF', 200 : '#FF00DF', 201 : '#FF00FF',
  \   232 : '#080808', 233 : '#121212', 234 : '#1C1C1C',
  \   235 : '#262626', 236 : '#303030', 237 : '#3A3A3A',
  \   238 : '#444444', 239 : '#4E4E4E', 240 : '#585858',
  \   241 : '#626262', 242 : '#6C6C6C', 243 : '#767676',
  \   255 : '#EEEEEE', 254 : '#E4E4E4', 253 : '#DADADA',
  \   252 : '#D0D0D0', 251 : '#C6C6C6', 250 : '#BCBCBC',
  \   249 : '#B2B2B2', 248 : '#A8A8A8', 247 : '#9E9E9E',
  \   246 : '#949494', 245 : '#8A8A8A', 244 : '#808080',
  \ }
" xterm color table. }}}

" This function does nothing more than returning the color value assigned
" to 'key'. If the key doesn't exists, it will return 'NONE'. If you want
" a html color code instead, just pass 1 as the third parameter.
function! s:get_color(dict, key, hex) " {{{
  if !has_key(a:dict, a:key)
    return 'NONE'
  endif

  if a:hex
    return s:xterm_colormap[a:dict[a:key]]
  else
    return a:dict[a:key]
  endif
endfunction " }}}

function! s:apply_common_colors() " {{{
  let s:common_colors =
    \ {
    \   'Comment'          : { 'fg'   : '246' },
    \   'Include'          : { 'fg'   : '245' },
    \   'Delimiter'        : {},
    \   'SpecialComment'   : { 'font' : 'bold',      'fg' : '246' },
    \   'Ignore'           : {},
    \   'Error'            : { 'font' : 'underline', 'fg' : '203' },
    \   'SpellRare'        : { 'font' : 'underline', 'fg' : '139' },
    \   'Title'            : {},
    \   'MoreMsg'          : {},
    \   'ModeMsg'          : {},
    \   'WarningMsg'       : {},
    \   'ErrorMsg'         : {},
    \   'Question'         : {},
    \   'htmlBold'         : { 'font' : 'bold' },
    \   'htmlItalic'       : { 'font' : 'italic' },
    \   'htmlBoldItalic'   : { 'font' : 'bold,italic' },
    \   'CtrlPNoEntries'   : { 'fg'   : '203' },
    \   'EasyMotionTarget' : { 'font' : 'bold',      'fg' : '203' },
    \   'plugError'        : { 'fg'   : '203' },
    \ }

  call clear_colors#apply_colors(s:common_colors)
endfunction " }}}

function! s:apply_common_links() " {{{
  highlight! link Boolean Constant
  highlight! link Float Number
  highlight! link Statement Function
  highlight! link Conditional Function
  highlight! link Repeat Function
  highlight! link Label Function
  highlight! link Operator Identifier
  highlight! link Keyword Function
  highlight! link Exception Function
  highlight! link PreProc Constant
  highlight! link Define Include
  highlight! link Macro Include
  highlight! link PreCondit Include
  highlight! link Type Identifier
  highlight! link StorageClass Identifier
  highlight! link Structure Identifier
  highlight! link Typedef Identifier
  highlight! link Special Function
  highlight! link SpecialChar Character
  highlight! link Debug Identifier
  highlight! link CursorColumn CursorLine
  highlight! link NonText Conceal
  highlight! link SpellBad Error
  highlight! link SpellCap Error
  highlight! link SpellLocal Error
  highlight! link Directory Function
  highlight! link StatusLineNC LineNr
  highlight! link TabLineFill TabLine
  highlight! link VisualNOS Visual
  highlight! link diffAdded String
  highlight! link diffRemoved Number
  highlight! link markdownH1 Identifier
  highlight! link markdownH2 markdownH1
  highlight! link markdownH3 markdownH1
  highlight! link markdownH4 markdownH1
  highlight! link markdownH5 markdownH1
  highlight! link markdownH6 markdownH1
  highlight! link markdownEscape Character
  highlight! link markdownHeadingDelimiter Function
  highlight! link markdownUrl Underlined
  highlight! link markdownLinkText Constant
  highlight! link markdownLinkDelimiter Identifier
  highlight! link markdownLinkTextDelimiter Identifier
  highlight! link markdownCode Comment
  highlight! link markdownCodeDelimiter SpecialComment
  highlight! link ocamlModPath Identifier
  highlight! link ocamlModule Identifier
  highlight! link ocamlFullMod Identifier
  highlight! link StartifyBracket Comment
  highlight! link StartifyFile Normal
  highlight! link StartifyFooter Constant
  highlight! link StartifyHeader Character
  highlight! link StartifyPath Comment
  highlight! link StartifySelect Function
  highlight! link StartifySlash StartifyPath
  highlight! link StartifySpecial Identifier
  highlight! link CtrlPMatch Function
  highlight! link CtrlPPrtBase Function
  highlight! link CtrlPMode2 StatusLine
  highlight! link CtrlPStats StatusLine
  highlight! link GentooChangeLogDelFile SignifyLineDelete
  highlight! link GitGutterAdd SignifySignAdd
  highlight! link GitGutterChange SignifySignChange
  highlight! link GitGutterDelete SignifySignDelete
  highlight! link GitGutterDeleteLine SignifyLineDelete
  highlight! link GitGutterChangeDelete SignifySignDelete
  highlight! link GitGutterChangeDeleteLine DiffChange
  highlight! link EasyMotionShade Comment
  highlight! link EasyMotionTarget2Second EasyMotionTarget2First
  highlight! link EasyMotionIncSearch Character
  highlight! link EasyMotionIncCursor IncSearch
  highlight! link SneakStreakTarget EasyMotionTarget
  highlight! link SneakStreakMask EasyMotionTarget2First
  highlight! link SneakStreakStatusLine StatusLine
  highlight! link notesName Constant
  highlight! link notesTagName Tag
  highlight! link notesListBullet Function
  highlight! link notesListNumber Number
  highlight! link notesSingleQuoted String
  highlight! link notesItalic htmlItalic
  highlight! link notesBold htmlBold
  highlight! link notesTextURL Underlined
  highlight! link notesRealURL notesTextURL
  highlight! link notesEmailAddr Function
  highlight! link notesUnixPath Comment
  highlight! link notesWindowsPath notesUnixPath
  highlight! link notesPathLnum Number
  highlight! link notesTodo Todo
  highlight! link notesXXX notesFixme
  highlight! link notesDoneItem Comment
  highlight! link notesVimCmd String
  highlight! link notesTitle Identifier
  highlight! link notesAtxHeading Number
  highlight! link notesShortHeading Identifier
  highlight! link notesRule Comment
  highlight! link notesCodeStart Comment
  highlight! link notesCodeEnd notesCodeStart
  highlight! link notesInlineCode Comment
  highlight! link notesInlineCodeMarker Number
  highlight! link notesModeLine Comment
  highlight! link notesLastEdited Comment
  highlight! link GundoNumber Number
  highlight! link TagbarNestedKind String
  highlight! link TagbarScope Identifier
  highlight! link TagbarType Number
  highlight! link TagbarSignature Comment
  highlight! link TagbarPseudoID Constant
  highlight! link TagbarVisibilityPublic Function
  highlight! link TagbarVisibilityProtected Constant
  highlight! link TagbarVisibilityPrivate Number
  highlight! link plugDash Function
  highlight! link plugPlus Character
  highlight! link plugStar Constant
  highlight! link plugMessage Constant
  highlight! link plugX plugError
  highlight! link plugName Function
  highlight! link plugInstall Constant
  highlight! link plugUpdate Comment
  highlight! link plugSha Identifier
  highlight! link FugitiveblameUncommitted Comment
  highlight! link FugitiveblameDelimiter Comment
  highlight! link gitvHash Identifier
  highlight! link gitvRef Identifier
  highlight! link gitvRefTag Constant
  highlight! link gitvRefRemote Constant
  highlight! link gitvRefHead Number
  highlight! link gitvGraphEdge0 String
  highlight! link gitvGraphEdge1 Constant
  highlight! link gitvGraphEdge2 Function
  highlight! link gitvGraphEdge3 Identifier
  highlight! link gitvLoadMore Comment
  highlight! link gitvWorkingCopy Comment
  highlight! link gitvRange Number
  highlight! link gitvRangeFromTo Identifier
  highlight! link gitvLocalUncommit Constant
  highlight! link gitvLocalUncommitNode gitvLocalUncommit
  highlight! link gitvLocalCommited Function
  highlight! link gitvLocalCommitedNode gitvLocalCommited
  highlight! link painterCanvasWhite painterPaletteWhite
  highlight! link painterCanvasRed painterPaletteRed
  highlight! link painterCanvasBlue painterPaletteBlue
  highlight! link painterCanvasYellow painterPaletteYellow
  highlight! link painterCanvasGreen painterPaletteGreen
endfunction " }}}

" Apply all colors in 'dict'.
function! clear_colors#apply_colors(dict) " {{{
  if has('gui_running')
    let l:prefix = 'gui'
    let l:to_hex = 1
  else
    let l:prefix = 'cterm'
    let l:to_hex = 0
  endif

  for [ group, value ] in items(a:dict)
    execute 'highlight ' . group
      \ . ' ' . l:prefix . '=' . s:get_color(value, 'font', 0)
      \ . ' ' . l:prefix . 'bg=' . s:get_color(value, 'bg', l:to_hex)
      \ . ' ' . l:prefix . 'fg=' . s:get_color(value, 'fg', l:to_hex)
  endfor
endfunction " }}}

function! clear_colors#apply_common_highlights() " {{{
  call s:apply_common_colors()
  call s:apply_common_links()
endfunction " }}}

" This function enables plugin specific tweaks and other things.
function! clear_colors#apply_specific_stuff() " {{{
  let g:indent_guides_auto_colors = 0
  let g:indentLine_color_gui = s:xterm_colormap[g:indentLine_color_term]

  let g:rainbow_guifgs  = []
  let g:rbpt_colorpairs = []

  let l:counter = len(g:rainbow_ctermfgs)
  let l:rainbow_colors = {}
  for value in g:rainbow_ctermfgs
    let g:rainbow_guifgs  += [ s:xterm_colormap[value] ]
    let g:rbpt_colorpairs += [[ value, s:xterm_colormap[value] ]]

    " Workaround, to force recoloring parenthesis, when switching
    " colorschemes.
    execute 'let l:rainbow_colors["lv' . l:counter
      \ . 'c"] = { "fg" : ' . value '}'
    let l:counter -= 1
  endfor

  " This workaround wrangles the colors in 'g:rainbow_ctermfgs' for the
  " plugin 'kien/rainbow_parenthesis.vim'. This allows both plugins to look
  " the same.
  let l:len = len(g:rainbow_ctermfgs)
  let l:off = l:len - 5
  for counter in range(1, 16)
    execute 'let l:rainbow_colors["level' . counter . 'c"] = { "fg" : '
      \ . g:rainbow_ctermfgs[l:len - 1 - ((counter + l:off) % l:len)] . '}'
  endfor

  call clear_colors#apply_colors(l:rainbow_colors)
endfunction " }}}
