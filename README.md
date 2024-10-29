```
NVIM v0.10.1
Build type: Release
LuaJIT 2.1.1725453128
Run "nvim -V1 -v" for more info
```

### ALACRITTY TOML CONTENT

```
import = [
  "/Users/kabanala/.nvm/versions/node/v18.16.0/lib/node_modules/alacritty-themes/themes/Catppuccin-Frappe.toml"
]
live_config_reload = true

[env]
TERM = "xterm-256color"

[window]
decorations = "buttonless"
dynamic_padding = false
opacity = 0.9

  [window.padding]
  x = 25
  y = 20

[cursor.style]
shape = "Block"
blinking = "Always"
```

### TMUX conf (usually located in home folder with name tmux.conf)

```
set-option -g default-shell /bin/bash
set-option -g default-command /bin/bash
set-option -g history-limit 5000
#set -g @plugin 'christoomey/vim-tmux-navigator'
#run '~/.tmux/plugins/tpm/tpm'
# Smart pane switching with awareness of Vim splits.
# See: https://github.com/christoomey/vim-tmux-navigator
is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|l?n?vim?x?|fzf)(diff)?$'"
bind-key -n 'C-h' if-shell "$is_vim" 'send-keys C-h'  'select-pane -L'
bind-key -n 'C-j' if-shell "$is_vim" 'send-keys C-j'  'select-pane -D'
bind-key -n 'C-k' if-shell "$is_vim" 'send-keys C-k'  'select-pane -U'
bind-key -n 'C-l' if-shell "$is_vim" 'send-keys C-l'  'select-pane -R'
tmux_version='$(tmux -V | sed -En "s/^tmux ([0-9]+(.[0-9]+)?).*/\1/p")'
if-shell -b '[ "$(echo "$tmux_version < 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\'  'select-pane -l'"
if-shell -b '[ "$(echo "$tmux_version >= 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\\\'  'select-pane -l'"

bind-key -T copy-mode-vi 'C-h' select-pane -L
bind-key -T copy-mode-vi 'C-j' select-pane -D
bind-key -T copy-mode-vi 'C-k' select-pane -U
bind-key -T copy-mode-vi 'C-l' select-pane -R
bind-key -T copy-mode-vi 'C-\' select-pane -l
set -g prefix C-b
setw -g mode-keys vi
bind -T copy-mode-vi v send -X begin-selection
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "pbcopy"
bind P paste-buffer
bind -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cance
```

### BASH_PROFILE 


```
force_color_prompt=yes
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2"
set vi-ins-mode-string "\1\e[6 q\2"

PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]>>\[\033[0m\] '
bind "Control-Space":vi-movement-mode
alias nv="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /Users/kabanala/git-projects/alacritty/extra/completions/alacritty.bash
source ~/.bash_completion/alacritty
source ~/.bash_completion/alacritty
export PATH="/usr/local/opt/curl/bin:$PATH"

set show-mode-in-prompt on
set vi-ins-mode-string "+"
set vi-cmd-mode-string ":"
set editing-mode vi
set vi-ins-mode-string \1\e[6 q\2
set vi-cmd-mode-string \1\e[2 q\2
set keymap vi-insert
```

### BASH_RC file

```
set -o vi
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# FIDDLER_EVERYWHERE_SCRIPT_START
if [ -n "$FE_STARTED" ] && [ -s '/Applications/Fiddler Everywhere.app/Contents/Resources/app/out/assets/scripts/startup-mac.sh' ] && [ "$STARTUP_SOURCED" != "true" ] ; then
    source '/Applications/Fiddler Everywhere.app/Contents/Resources/app/out/assets/scripts/startup-mac.sh'
    STARTUP_SOURCED="true"
fi
# FIDDLER_EVERYWHERE_SCRIPT_END
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/kabanala/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
. "$HOME/.cargo/env"
force_color_prompt=yes
PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]>>\[\033[0m\] '
bind "Control-Space":vi-movement-mode
set show-mode-in-prompt on
set vi-cmd-mode-string "\1\e[2 q\2"
set vi-ins-mode-string "\1\e[6 q\2"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#source /Users/kabanala/git-projects/alacritty/extra/completions/alacritty.bash
source ~/.bash_completion/alacritty
source ~/.bash_completion/alacritty
#npm config set prefix ~/.npm-global
#export PATH="$PATH:~/.npm-global/bin"
alias nv="nvim"
```
