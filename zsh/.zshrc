# ~~~~~~~~~~~~~~~ SSH ~~~~~~~~~~~~~~~~~~~~~~~~
eval "$(ssh-agent -s)" > /dev/null 2>&1
ssh-add ~/.ssh/github-orphic > /dev/null 2>&1


# ~~~~~~~~~~~~ Environment Variables ~~~~~~~~~
export VISUAL=nvim
export EDITOR=nvim
export TERM="tmux-256color"

export BROWSER="brave"

# Directories
export REPOS="$HOME/Repos"
export GITUSER="itsorphic"
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export LAB="$GHREPOS/lab"
export BRAIN="$GHREPOS/second-brain"
export SCRIPTS="$DOTFILES/scripts"

# ~~~~~~~~~~~~~~~ Path configuration ~~~~~~~~~~~
path=(
    $path
    $HOME/bin
    $HOME/.local/bin
    $SCRIPTS
)

# Remove duplicates
typeset -U path
path=($^path(N-/))

export PATH

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY


# ~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~~~~~~~
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure


# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

alias c='clear'
alias e='exit'
alias v='nvim'
alias cat='bat'

alias scripts='cd $SCRIPTS'

# Repos
alias lab='cd $LAB'
alias repos='cd $GHREPOS'

# Brain
alias brain='cd $BRAIN'
alias in='cd $BRAIN/0\ Inbox'

# ls
alias ls='ls --color=auto'
alias la='ls -lathr'

# finds all files recursively and sorts by last modification, ignore hidden files
alias lastmod='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

alias syu='sudo pacman -Syu'

# Git

alias gc='git commit'
alias gp='git pull'
alias gs='git status'
