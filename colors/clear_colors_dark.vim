highlight clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'clear_colors_dark'

let s:colors =
  \ {
  \   'Normal'                 : { 'bg'   : '235',       'fg' : '250' },
  \   'Comment'                : { 'fg'   : '246' },
  \   'SpecialComment'         : { 'font' : 'bold',      'fg' : '246' },
  \   'Include'                : { 'fg'   : '245' },
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
  \   'Tag'                    : { 'font' : 'bold',      'fg' : '139' },
  \   'SpellRare'              : { 'font' : 'underline', 'fg' : '139' },
  \   'Todo'                   : { 'font' : 'bold',      'fg' : '180' },
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
  \   'OutOfTextwidth'         : { 'font' : 'underline', 'bg' : '238', 'fg' : '174' },
  \   'ALEWarning'             : { 'font' : 'underline', 'fg' : '180' },
  \   'ALEInfoSign'            : { 'font' : 'bold',      'bg' : '237' },
  \   'ALEErrorSign'           : { 'font' : 'bold',      'bg' : '237', 'fg' : '203' },
  \   'ALEWarningSign'         : { 'font' : 'bold',      'bg' : '237', 'fg' : '215' },
  \   'CtrlPNoEntries'         : { 'fg'   : '203' },
  \   'SignifySignAdd'         : { 'font' : 'bold',      'bg' : '237', 'fg' : '107' },
  \   'SignifySignChange'      : { 'font' : 'bold',      'bg' : '237', 'fg' : '215' },
  \   'SignifySignDelete'      : { 'font' : 'bold',      'bg' : '237', 'fg' : '203' },
  \   'SignifyLineDelete'      : { 'bg'   : '95',        'fg' : '252' },
  \   'EasyMotionTarget'       : { 'font' : 'bold',      'fg' : '203' },
  \   'EasyMotionTarget2First' : { 'font' : 'bold',      'fg' : '180' },
  \   'SneakPluginTarget'      : { 'bg'   : '67',        'fg' : '234' },
  \   'SneakPluginScope'       : { 'bg'   : '235',       'fg' : '250' },
  \   'SneakStreakCursor'      : { 'font' : 'bold',      'bg' : '236', 'fg' : '203' },
  \   'IndentGuidesOdd'        : { 'bg'   : '236' },
  \   'IndentGuidesEven'       : { 'bg'   : '237' },
  \   'ExtraWhitespace'        : { 'bg'   : '167',       'fg' : '167' },
  \   'notesFixme'             : { 'font' : 'bold',      'fg' : '174' },
  \   'notesInProgress'        : { 'font' : 'bold',      'fg' : '110' },
  \   'notesDoneMarker'        : { 'font' : 'bold',      'fg' : '65' },
  \   'GundoCurrentLocation'   : { 'font' : 'bold',      'fg' : '110' },
  \   'gitvGraphEdge4'         : { 'fg' : '179' },
  \   'gitvGraphEdge5'         : { 'fg' : '72' },
  \   'gitvGraphEdge6'         : { 'fg' : '175' },
  \   'gitvGraphEdge7'         : { 'fg' : '147' },
  \   'gitvGraphEdge8'         : { 'fg' : '204' },
  \   'gitvGraphEdge9'         : { 'fg' : '173' },
  \   'painterPaletteWhite'    : { 'bg' : '250',         'fg' : '250' },
  \   'painterPaletteRed'      : { 'bg' : '174',         'fg' : '174' },
  \   'painterPaletteBlue'     : { 'bg' : '110',         'fg' : '110' },
  \   'painterPaletteYellow'   : { 'bg' : '180',         'fg' : '180' },
  \   'painterPaletteGreen'    : { 'bg' : '107',         'fg' : '107' },
  \   'painterCanvasEmpty'     : { 'bg' : '235',         'fg' : '235' },
  \ }

" Plugin specific stuff. {{{
let g:indentLine_color_term = s:colors.Conceal.fg
let g:rainbow_ctermfgs = [ 179, 72, 175, 147, 204, 173 ]
" Plugin specific stuff. }}}

" Apply the colors and highlighting groups.
call clear_colors#apply_colors(s:colors)
call clear_colors#apply_common_highlights()
call clear_colors#apply_specific_stuff()
