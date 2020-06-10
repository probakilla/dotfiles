function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo ‘(‘`basename $VIRTUAL_ENV `’) ‘
}

function is_wsl {
    [[ $(grep Microsoft /proc/version) ]] && echo 1 || echo 0
}

function cds_config {
    export CDS_PYBIN="/home/julien/pybin/"
    export PATH=$PATH:$CDS_PYBIN
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
    zsh-z
)

# Loading plugins
ZSH_DISABLE_COMPFIX=true

ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_CONFIG=$HOME/.config/tmux/.tmux.conf

source $HOME/.dotfiles/.aliases
source $ZSH/oh-my-zsh.sh

## User configuration ##

IN_WSL=$(is_wsl)

# LSCOLORS for wsl folders
[ $IN_WSL -eq 1 ] && LS_COLORS='ow=01;34;40:di=0;41'; export LS_COLORS; unsetopt BG_NICE;
[ "$(hostname)" = "CL003371" ] && cds_config;

neofetch

export VIRTUAL_ENV_DISABLE_PROMPT=
