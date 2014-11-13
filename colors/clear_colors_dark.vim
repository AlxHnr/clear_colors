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

highlight clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'clear_colors_dark'

let s:colors =
  \ {
  \   'Normal'                 : { 'bg'   : '235',       'fg' : '250' },
  \   'Constant'               : { 'fg'   : '180' },
  \   'String'                 : { 'fg'   : '107' },
  \   'Character'              : { 'font' : 'bold',      'fg' : '107' },
  \   'Number'                 : { 'fg'   : '174' },
  \   'Identifier'             : { 'fg'   : '139' },
  \   'Function'               : { 'fg'   : '110' },
  \   'Underlined'             : { 'font' : 'underline', 'fg' : '110' },
  \   'Folded'                 : { 'bg'   : '236',       'fg' : '110' },
  \   'FoldColumn'             : { 'bg'   : '237',       'fg' : '110' },
  \   'SignColumn'             : { 'font' : 'bold',      'bg' : '237' },
  \   'ColorColumn'            : { 'bg'   : '236' },
  \   'Conceal'                : { 'fg'   : '240' },
  \   'Tag'                    : { 'font' : 'bold',      'fg'    : '139' },
  \   'Todo'                   : { 'font' : 'bold',      'fg'    : '180' },
  \   'CursorLine'             : { 'bg'   : '236' },
  \   'CursorLineNr'           : { 'bg'   : '238',       'fg' : '245' },
  \   'MatchParen'             : { 'font' : 'bold',      'bg' : '96',  'fg' : '255' },
  \   'StatusLine'             : { 'bg'   : '237' },
  \   'DiffAdd'                : { 'bg'   : '65',        'fg' : '253' },
  \   'DiffDelete'             : { 'bg'   : '95',        'fg' : '95' },
  \   'DiffChange'             : { 'bg'   : '60',        'fg' : '251' },
  \   'DiffText'               : { 'bg'   : '66',        'fg' : '253' },
  \   'VertSplit'              : { 'bg'   : '237',       'fg' : '237' },
  \   'Search'                 : { 'bg'   : '239',       'fg' : '250' },
  \   'IncSearch'              : { 'font' : 'bold',      'bg' : '72',  'fg' : '235' },
  \   'LineNr'                 : { 'bg'   : '237',       'fg' : '243' },
  \   'TabLine'                : { 'font' : 'underline', 'bg' : '235', 'fg' : '241' },
  \   'TabLineSel'             : { 'font' : 'underline', 'bg' : '238', 'fg' : '249' },
  \   'Visual'                 : { 'bg'   : '242',       'fg' : '251' },
  \   'Pmenu'                  : { 'bg'   : '239',       'fg' : '249' },
  \   'Pmenusel'               : { 'bg'   : '244',       'fg' : '253' },
  \   'PmenuSbar'              : { 'bg'   : '243' },
  \   'PmenuThumb'             : { 'bg'   : '251' },
  \   'SpecialKey'             : { 'fg'   : '95' },
  \   'WildMenu'               : { 'bg'   : '242',       'fg' : '253' },
  \   'OutOfTextwidth'         : { 'font' : 'underline', 'bg' : '238' },
  \   'SyntasticErrorSign'     : { 'font' : 'bold',      'bg' : '237', 'fg' : '203' },
  \   'SyntasticWarningSign'   : { 'font' : 'bold',      'bg' : '237', 'fg' : '215' },
  \   'SignifySignAdd'         : { 'font' : 'bold',      'bg' : '237', 'fg' : '107' },
  \   'SignifySignChange'      : { 'font' : 'bold',      'bg' : '237', 'fg' : '215' },
  \   'SignifySignDelete'      : { 'font' : 'bold',      'bg' : '237', 'fg' : '203' },
  \   'SignifyLineDelete'      : { 'bg'   : '95',        'fg' : '252' },
  \   'EasyMotionTarget2First' : { 'font' : 'bold',      'fg' : '180' },
  \   'SneakPluginTarget'      : { 'bg'   : '67',        'fg' : '234' },
  \   'SneakPluginScope'       : { 'bg'   : '235',       'fg' : '250' },
  \   'SneakStreakCursor'      : { 'font' : 'bold',      'bg' : '236', 'fg' : '203' },
  \   'IndentGuidesOdd'        : { 'bg'   : '236' },
  \   'IndentGuidesEven'       : { 'bg'   : '237' },
  \   'ExtraWhitespace'        : { 'bg'   : '167',       'fg' : '167' },
  \   'notesName'              : { 'font' : 'none',      'fg' : '107' },
  \   'notesFixme'             : { 'font' : 'bold',      'fg' : '174' },
  \   'notesInProgress'        : { 'font' : 'bold',      'fg' : '110' },
  \   'notesDoneMarker'        : { 'font' : 'bold',      'fg' : '65' },
  \   'GundoCurrentLocation'   : { 'font' : 'bold',      'fg' : '110' },
  \ }

" Plugin specific stuff. {{{
let g:indentLine_color_term = s:colors.Conceal.fg
let g:rainbow_ctermfgs = [ 179, 72, 175, 147, 204, 173 ]
" Plugin specific stuff. }}}

" Apply the colors and highlighting groups.
call clear_colors#apply_colors(s:colors)
call clear_colors#apply_common_highlights()
call clear_colors#apply_specific_stuff()
