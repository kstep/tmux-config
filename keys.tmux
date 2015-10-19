# Base key bindings (vim-like) {{{
set -g prefix F1

unbind l
bind F1 last-window

unbind [
bind Escape copy-mode

bind , set-window-option synchronize-panes
bind a set-window-option monitor-activity
bind A set-window-option monitor-silence

bind s split-window -v
bind v split-window -h
bind = new-window

bind j select-pane -D
bind k select-pane -U
bind h select-pane -L
bind l select-pane -R

bind < resize-pane -L 5
bind > resize-pane -R 5
bind - resize-pane -D 5
bind + resize-pane -U 5

bind K swap-pane -U
bind J swap-pane -D

bind L next-window
bind H previous-window

bind : command-prompt
# }}}

# Program key bindings {{{
bind 0 selectw -t 0
bind 1 selectw -t 1
bind 2 selectw -t 2
bind 3 selectw -t 3
bind 4 selectw -t 4
bind 5 selectw -t 5
bind 6 selectw -t 6
bind 7 selectw -t 7
bind 8 selectw -t 8
bind 9 selectw -t 9
bind ` command-prompt

bind C-m neww mutt
bind C-v neww vim
bind C-b splitw -v -l 20 mcabber
bind C-c splitw -h -l 40 cmus

bind p paste-buffer -s \015
bind -t vi-copy C-v rectangle-toggle
bind -t vi-copy v begin-selection
bind -t vi-copy y copy-selection
# }}}

# Smart pane switching with awareness of vim splits {{{
bind -n C-S-H run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-S-H) || tmux select-pane -L"
bind -n C-S-J run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-S-J) || tmux select-pane -D"
bind -n C-S-K run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-S-K) || tmux select-pane -U"
bind -n C-S-L run "(tmux display-message -p '#{pane_current_command}' | grep -iq vim && tmux send-keys C-S-L) || tmux select-pane -R"
# bind -n C-S-| run "(tmux display-message -p -#{pane_current_command}' | grep -iq vim && tmux send-keys 'C-S-|') || tmux select-pane -l"
# }}}

# vim: ft=tmux
