export TERM="termite"
export ZSH_CONF="$HOME/.config/zsh"
# env
source $ZSH_CONF/env.zsh
# zplug

export ZPLUG_LOADFILE="$ZSH_CONF/packages.zsh"
source $ZPLUG_REPO/init.zsh

if ! zplug check; then
    zplug install
fi

# use --verbose to list loaded plugins
zplug load #--verbose

# powerlevel9k-Konfiguration
source $ZSH_CONF/theme.zsh
# Wort vor- und zurück springen
source $ZSH_CONF/keybindings.zsh
# Alias
source $ZSH_CONF/alias.zsh
# Auto-Completion
source $ZSH_CONF/completions.zsh
# History-Einstellungen etc.
source $ZSH_CONF/options.zsh
# fuzzy-search/completions etc.
source $ZSH_CONF/fzf.zsh

# Load all local configs
if [[ -s $ZSH_CONF/local ]]; then
  for file in $ZSH_CONF/local/*.zsh; do
    source $file
  done
fi

if [[ -s "$HOME/.zlocal" ]]; then
  source "$HOME/.zlocal"
fi
 
