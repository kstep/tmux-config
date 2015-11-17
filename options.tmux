# Terminal options {{{
set -g default-terminal screen-256color
set -g terminal-overrides 'xterm*:smcup@:rmcup@'

set -g base-index 1
set -g terminal-overrides "*256col*:colors=256,*88col*:colors=88"
#set -ga terminal-overrides ",rxvt*:rmir=\e]12;greenx07:smir=\e]12;orangex07"
set -g mouse off

set -g history-limit 1000
set -g buffer-limit 1000

set -g set-titles-string "#S.#I.#P #W"
set -g set-titles on
set -g renumber-windows on
# }}}

# Window options {{{
setw -g mode-keys vi
setw -g xterm-keys on
setw -g utf8 on
setw -g aggressive-resize on
# }}}

# vim: ft=tmux
