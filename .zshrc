# main zsh settings.

## Environment Variables
# Default Programs
export EDITOR="code"
export BROWSER="firefox"

# Follow XDG Base Dir Specifications
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/.share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

# History files
export LESSHISTFILE="$XDG_CACHE_HOME/zsh-less-history"
export PYTHON_HISTORY="$XDG_DATA_HOME/python/history"
HISTFILE="~/.cache/zsh/zsh-history" # Moves history file to cache
# History options
HISTSIZE=1000000
SAVEHIST=1000000
HISTCONTROL=ignoreboth # Ignores duplicate and commands starting with a space


# add ~/.scripts to PATH
export PATH=$HOME/.scripts:$PATH

# Set XDG specification locations for various environment variables
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export DISCORD_USER_DATA_DIR="${XDG_DATA_HOME}"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME"/ffmpeg
export GOPATH="$XDG_DATA_HOME"/go
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc":"$XDG_CONFIG_HOME/gtk-2.0/gtkrc.mine"
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export BUNDLE_USER_CACHE=$XDG_CACHE_HOME/bundle
export BUNDLE_USER_CONFIG=$XDG_CONFIG_HOME/bundle/config
export BUNDLE_USER_PLUGIN=$XDG_DATA_HOME/bundle
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc

## Aliased Commands
# add dotfiles git
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# set Code to use extensions in XDG dir

# Source external files
## add wal colors support for TTY
source $XDG_CACHE_HOME/wal/colors-tty.sh

# Load modules
zmodload zsh/complist # Completion
autoload -U compinit && compinit
autoload -U colors && colors # Shell Colors

# Completion Options
zstyle ':completion:*' menu select # Set completion menu to TAB
zstyle ':completion:*' special-dirs true # force . and .. to show in Completion menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 # Colorize the completion menu
zstyle ':completion:*' squeeze-slashes false # Explicitly disabled to allow /*/ expansion

#Main options
setopt append_history inc_append_history share_history # History improvements:
# History is appended rather than overwriting, is appended as code is executed, 
# and is shared across sessions
setopt auto_menu menu_complete # Autocomplete first menu match
setopt autocd # Type the name of a dir to CD into it
setopt auto_param_slash # When a dir is autocompleted, add a slash, not a space
setopt no_case_glob no_case_match # makes autocomplete not case sensitive
setopt globdots # include dotfiles in autocomplete
setopt extended_glob # matches ~,#,^
setopt interactive_comments # allow comments in shell
setopt notify # notify in terminal when a long process completes
stty stop undef # stops accidental terminal stop

# keybinds 
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line

# Use Oh My Posh for prompt
eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/oh-my-posh/.posh.json)"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Set man pages to use colors
export MANPAGER="less -R --use-color -Dd+r -Du+b"