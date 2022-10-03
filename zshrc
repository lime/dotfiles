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
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory sharehistory hist_ignore_all_dups hist_ignore_space
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install

fpath+=($HOME/.zdir/pure)
autoload -Uz promptinit
promptinit

zstyle :prompt:pure:user color yellow
zstyle :prompt:pure:host color yellow
prompt pure

source ~/.aliases
source ~/.zdir/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zdir/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Bind up & down arrows to substring search
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Node
export NVM_DIR="$HOME/.nvm"
if [ -e $NVM_DIR ]; then
  source $NVM_DIR/nvm.sh
fi

# Ruby
if type rbenv &> /dev/null; then
  eval "$(rbenv init -)"
fi

# Homebrew
HOMEBREW_AUTO_UPDATE_SECS=604800
