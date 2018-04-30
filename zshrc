fpath=($HOME/.zdir/functions $fpath)

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/lime/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
bindkey -e
# End of lines configured by zsh-newuser-install

autoload -Uz compinit promptinit
compinit

promptinit
prompt pure

source ~/.aliases
source ~/.zdir/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zdir/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Bind up & down arrows to substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
