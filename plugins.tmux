set-environment -g TMUX_PLUGIN_MANAGER_PATH '~/.config/tmux/plugins/'

# git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

run '~/.config/tmux/plugins/tpm/tpm'

# vim: ft=tmux
