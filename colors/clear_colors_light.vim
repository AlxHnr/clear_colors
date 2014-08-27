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
let g:colors_name = 'clear_colors_light'

let s:colors =
	\	{
	\		'Normal'                 : { 'bg'   : '231',       'fg' : '239' },
	\		'Constant'               : { 'fg'   : '173' },
	\		'Number'                 : { 'fg'   : '167' },
	\		'Function'               : { 'fg'   : '67' },
	\		'Underlined'             : { 'font' : 'underline', 'fg' : '67' },
	\		'Folded'                 : { 'bg'   : '255',       'fg' : '67' },
	\		'FoldColumn'             : { 'bg'   : '254',       'fg' : '67' },
	\		'SignColumn'             : { 'font' : 'bold',      'bg' : '254' },
	\		'ColorColumn'            : { 'bg'   : '255' },
	\		'CursorLine'             : { 'bg'   : '255' },
	\		'CursorLineNr'           : { 'bg'   : '253',       'fg' : '246' },
	\		'MatchParen'             : { 'font' : 'bold',      'bg' : '174', 'fg' : '231' },
	\		'StatusLine'             : { 'bg'   : '254' },
	\		'DiffAdd'                : { 'bg'   : '194' },
	\		'DiffDelete'             : { 'bg'   : '224',       'fg' : '224' },
	\		'DiffChange'             : { 'bg'   : '189' },
	\		'DiffText'               : { 'bg'   : '230' },
	\		'VertSplit'              : { 'bg'   : '254',       'fg' : '254' },
	\		'Search'                 : { 'bg'   : '253',       'fg' : '239' },
	\		'IncSearch'              : { 'font' : 'bold',      'bg' : '72',  'fg' : '231' },
	\		'LineNr'                 : { 'bg'   : '254',       'fg' : '248' },
	\		'TabLine'                : { 'font' : 'underline', 'bg' : '252', 'fg' : '243' },
	\		'TabLineSel'             : { 'font' : 'underline', 'bg' : '255', 'fg' : '244' },
	\		'Visual'                 : { 'bg'   : '250',       'fg' : '236' },
	\		'Pmenu'                  : { 'bg'   : '252' },
	\		'Pmenusel'               : { 'bg'   : '247',       'fg' : '231' },
	\		'PmenuSbar'              : { 'bg'   : '248' },
	\		'PmenuThumb'             : { 'bg'   : '245' },
	\		'WildMenu'               : { 'bg'   : '247',       'fg' : '231' },
	\		'OutOfTextwidth'         : { 'font' : 'underline', 'bg' : '255' },
	\		'SyntasticErrorSign'     : { 'font' : 'bold',      'bg' : '254', 'fg' : '160' },
	\		'SyntasticWarningSign'   : { 'font' : 'bold',      'bg' : '254', 'fg' : '209' },
	\		'GitGutterAdd'           : { 'font' : 'bold',      'bg' : '254', 'fg' : '70' },
	\		'GitGutterChange'        : { 'font' : 'bold',      'bg' : '254', 'fg' : '172' },
	\		'GitGutterDelete'        : { 'font' : 'bold',      'bg' : '254', 'fg' : '160' },
	\		'GitGutterDeleteLine'    : { 'bg'   : '224' },
	\		'EasyMotionTarget2First' : { 'font' : 'bold',      'fg' : '178' },
	\		'SneakPluginTarget'      : { 'bg'   : '67',        'fg' : '255' },
	\		'SneakPluginScope'       : { 'bg'   : '231',       'fg' : '239' },
	\		'SneakStreakCursor'      : { 'font' : 'bold',      'bg' : '255', 'fg' : '203' },
	\	}

call clear_colors#apply_colors(s:colors)
call clear_colors#apply_common_highlights()
