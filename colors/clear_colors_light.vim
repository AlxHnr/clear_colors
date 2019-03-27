" Copyright (c) 2016 Alexander Heinrich {{{
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

highlight clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'clear_colors_light'

let s:colors =
  \ {
  \   'Normal'                 : { 'bg'   : '231',       'fg' : '239' },
  \   'Comment'                : { 'fg'   : '246' },
  \   'SpecialComment'         : { 'font' : 'bold',      'fg' : '246' },
  \   'Include'                : { 'fg'   : '245' },
  \   'Constant'               : { 'fg'   : '173' },
  \   'String'                 : { 'fg'   : '64' },
  \   'Character'              : { 'font' : 'bold',      'fg' : '64' },
  \   'Number'                 : { 'fg'   : '167' },
  \   'Identifier'             : { 'fg'   : '133' },
  \   'Function'               : { 'fg'   : '67' },
  \   'Underlined'             : { 'font' : 'underline', 'fg' : '67' },
  \   'Folded'                 : { 'bg'   : '255',       'fg' : '67' },
  \   'FoldColumn'             : { 'bg'   : '254',       'fg' : '67' },
  \   'SignColumn'             : { 'font' : 'bold',      'bg' : '254' },
  \   'ColorColumn'            : { 'bg'   : '255' },
  \   'Conceal'                : { 'fg'   : '252' },
  \   'Tag'                    : { 'font' : 'bold',      'fg' : '133' },
  \   'SpellRare'              : { 'font' : 'underline', 'fg' : '139' },
  \   'Todo'                   : { 'font' : 'bold',      'fg' : '137' },
  \   'CursorLine'             : { 'bg'   : '255' },
  \   'CursorLineNr'           : { 'bg'   : '253',       'fg' : '246' },
  \   'MatchParen'             : { 'font' : 'bold',      'bg' : '174', 'fg' : '231' },
  \   'StatusLine'             : { 'bg'   : '254' },
  \   'DiffAdd'                : { 'bg'   : '193',       'fg' : '239' },
  \   'DiffDelete'             : { 'bg'   : '224',       'fg' : '224' },
  \   'DiffChange'             : { 'bg'   : '189',       'fg' : '239' },
  \   'DiffText'               : { 'bg'   : '194',       'fg' : '239' },
  \   'VertSplit'              : { 'bg'   : '254',       'fg' : '254' },
  \   'Search'                 : { 'bg'   : '253',       'fg' : '239' },
  \   'IncSearch'              : { 'font' : 'bold',      'bg' : '72',  'fg' : '231' },
  \   'LineNr'                 : { 'bg'   : '254',       'fg' : '248' },
  \   'TabLine'                : { 'font' : 'underline', 'bg' : '252', 'fg' : '243' },
  \   'TabLineSel'             : { 'font' : 'underline', 'bg' : '255', 'fg' : '244' },
  \   'Visual'                 : { 'bg'   : '250',       'fg' : '236' },
  \   'Pmenu'                  : { 'bg'   : '252' },
  \   'Pmenusel'               : { 'bg'   : '247',       'fg' : '231' },
  \   'PmenuSbar'              : { 'bg'   : '248' },
  \   'PmenuThumb'             : { 'bg'   : '245' },
  \   'SpecialKey'             : { 'fg'   : '217' },
  \   'WildMenu'               : { 'bg'   : '247',       'fg' : '231' },
  \   'OutOfTextwidth'         : { 'font' : 'underline', 'bg' : '255', 'fg' : '167' },
  \   'ALEWarning'             : { 'font' : 'underline', 'fg' : '173' },
  \   'ALEInfoSign'            : { 'font' : 'bold',      'bg' : '254' },
  \   'ALEErrorSign'           : { 'font' : 'bold',      'bg' : '254', 'fg' : '160' },
  \   'ALEWarningSign'         : { 'font' : 'bold',      'bg' : '254', 'fg' : '209' },
  \   'CtrlPNoEntries'         : { 'fg'   : '203' },
  \   'SignifySignAdd'         : { 'font' : 'bold',      'bg' : '254', 'fg' : '70' },
  \   'SignifySignChange'      : { 'font' : 'bold',      'bg' : '254', 'fg' : '172' },
  \   'SignifySignDelete'      : { 'font' : 'bold',      'bg' : '254', 'fg' : '160' },
  \   'SignifyLineDelete'      : { 'bg'   : '224',       'fg' : '239' },
  \   'EasyMotionTarget'       : { 'font' : 'bold',      'fg' : '203' },
  \   'EasyMotionTarget2First' : { 'font' : 'bold',      'fg' : '178' },
  \   'SneakPluginTarget'      : { 'bg'   : '67',        'fg' : '255' },
  \   'SneakPluginScope'       : { 'bg'   : '231',       'fg' : '239' },
  \   'SneakStreakCursor'      : { 'font' : 'bold',      'bg' : '255', 'fg' : '203' },
  \   'IndentGuidesOdd'        : { 'bg'   : '255' },
  \   'IndentGuidesEven'       : { 'bg'   : '254' },
  \   'ExtraWhitespace'        : { 'bg'   : '217',       'fg' : '217' },
  \   'notesFixme'             : { 'font' : 'bold',      'fg' : '167' },
  \   'notesInProgress'        : { 'font' : 'bold',      'fg' : '67' },
  \   'notesDoneMarker'        : { 'font' : 'bold',      'fg' : '107' },
  \   'GundoCurrentLocation'   : { 'font' : 'bold',      'fg' : '67' },
  \   'gitvGraphEdge4'         : { 'fg' : '172' },
  \   'gitvGraphEdge5'         : { 'fg' : '65' },
  \   'gitvGraphEdge6'         : { 'fg' : '131' },
  \   'gitvGraphEdge7'         : { 'fg' : '68' },
  \   'gitvGraphEdge8'         : { 'fg' : '204' },
  \   'gitvGraphEdge9'         : { 'fg' : '130' },
  \   'painterPaletteWhite'    : { 'bg' : '239',         'fg' : '239' },
  \   'painterPaletteRed'      : { 'bg' : '167',         'fg' : '167' },
  \   'painterPaletteBlue'     : { 'bg' : '67',          'fg' : '67' },
  \   'painterPaletteYellow'   : { 'bg' : '173',         'fg' : '173' },
  \   'painterPaletteGreen'    : { 'bg' : '64',          'fg' : '64' },
  \   'painterCanvasEmpty'     : { 'bg' : '231',         'fg' : '231' },
  \ }

" Plugin specific stuff. {{{
let g:indentLine_color_term = s:colors.Conceal.fg
let g:rainbow_ctermfgs = [ 172, 65, 131, 68, 204, 130 ]
" Plugin specific stuff. }}}

" Apply the colors and highlighting groups.
call clear_colors#apply_colors(s:colors)
call clear_colors#apply_common_highlights()
call clear_colors#apply_specific_stuff()
