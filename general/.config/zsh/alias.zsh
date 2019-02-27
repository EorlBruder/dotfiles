setopt COMPLETE_ALIASES

export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias port='netstat -tulpn | grep'

alias vi="nvim"
alias vim="nvim"
alias vimdiff="nvim -d"
alias vd="vimdiff"

alias e="$EDITOR"
alias v="$VISUAL"

alias d="docker"
alias dc="docker-compose"

alias g="git"
alias ga="git aa"
alias gc="git ci"
alias gps="git ps"
alias gpl="git pl"
alias gs="git st"
function gitall() {
    ga
    if [ -n "$1" ]
    then
        gc "$1"
    else
        gc update
    fi
    gps
}

alias grep='grep --color=auto'
alias more='less'

alias ..='cd ..'

alias ls='ls -hF --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

alias packer='PKGEXT=.tar SRCEXT=.src packer-aur'
alias makepkg='PKGEXT=.tar SRCEXT=.src makepkg'

function proxy() {
    ssh $1 -D 9999 -N exit
}

alias ssh-pw='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'

alias watch='watch --color'

alias reload_alias="source ~/.config/zsh/alias.zsh"
# Functions
# Find in all files pattern $1
fif() { ff * -exec grep -nHr "$1" {} \; ; }

source ~/.config/zsh/local/alias-*.zsh
