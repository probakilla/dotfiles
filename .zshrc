function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo ‘(‘`basename $VIRTUAL_ENV `’) ‘
}

# Oh my zsh theme
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gentoo"

# Sourcing files
#source $HOME/.dotfiles/.zshenv

# Plugin list
plugins=(
    tmux
    git
    zsh-syntax-highlighting
    colored-man-pages
    colorize
    command-not-found
    copydir
    copyfile
    cp
    gitignore
    virtualenv
    pip
    lol
    extract
    vundle
    history
)

# Loading plugins
ZSH_DISABLE_COMPFIX=true

ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_CONFIG=$HOME/.config/tmux/.tmux.conf

source $HOME/.dotfiles/.aliases
source $ZSH/oh-my-zsh.sh

## User configuration ##

# LSCOLORS for wsl folders
uname -r | grep -q 'Microsoft' && LS_COLORS='ow=01;34;40'; export LS_COLORS

neofetch

export VIRTUAL_ENV_DISABLE_PROMPT=

