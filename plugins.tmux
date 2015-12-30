set-environment -g TMUX_PLUGIN_MANAGER_PATH '~/.config/tmux/plugins/'

# git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
#set -g @plugin 'tmux-plugins/tmux-resurrect'  # save/restore current session
#set -g @plugin 'tmux-plugins/tmux-continuum'  # save current session automatically in background
set -g @plugin 'tmux-plugins/tmux-urlview'  # open url from current pane, requires `urlview`
set -g @plugin 'tmux-plugins/tmux-fpp'  # open file from current pane, requires `fpp-git`


run '~/.config/tmux/plugins/tpm/tpm'

# vim: ft=tmux
