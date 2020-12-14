#~Documentation: https://qutebrowser.org/doc/help/

#~jkl; to move around
config.unbind('h')
config.bind('j', 'scroll left')
config.bind('k', 'scroll down')
config.bind('l', 'scroll up')
config.bind(';', 'scroll right')

#~Control+j; to go back/forward
config.bind('<Ctrl-j>', 'back')
config.bind('<Ctrl-k>', 'scroll down')
config.bind('<Ctrl-l>', 'scroll up')
config.bind('<Ctrl-;>', 'forward')
config.bind('<Ctrl-Shift-PgUp>', 'tab-move -')
config.bind('<Ctrl-Shift-PgDown>', 'tab-move +')

#~Caret Mode: jkl; navigation
config.bind('j', 'move-to-prev-char', mode='caret')
config.bind('k', 'move-to-next-line', mode='caret')
config.bind('l', 'move-to-prev-line', mode='caret')
config.bind(';', 'move-to-next-char', mode='caret')

#~Caret Mode: JKL: scroll
config.bind('J', 'scroll left', mode='caret')
config.bind('K', 'scroll down', mode='caret')
config.bind('L', 'scroll up', mode='caret')
config.bind(':', 'scroll right', mode='caret')

#~= to zoom with +/-

