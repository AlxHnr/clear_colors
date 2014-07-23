# Clear Colors

A clear, unobtrusive colorscheme for Vim. It provides a consistent look
between 256 color terminals and GVim and also has an 8 color fallback mode
for older terminals and TTYs. This colorscheme comes both in a dark and
light variant and aims to be complete and consistent. Not all plugins are
supported yet, but it should work fine as long as they link to existing
highlighting groups.

Here is a screenshot of the GVim/256 color variants:
![screenshot.png](https://raw.github.com/AlxHnr/clear_colors/master/screenshot.png)

Here are both variants in 8 color fallback mode. The colors are likely to
vary from terminal to terminal. Since 8 color terminals are quite rare
nowadays and you will face them mostly in TTYs, the colors where chosen to
look nice in agetty.
![screenshot_fallback.png](https://raw.github.com/AlxHnr/clear_colors/master/screenshot_fallback.png)

## Installation

Please refer to the documentation of your package manager. After you
installed it, just add one of the following lines to your vimrc:

	colorscheme clear_colors_dark
	colorscheme clear_colors_light

## License

Released under the zlib license.
