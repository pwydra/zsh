bindkey -e

autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{A-Za-z}={a-zA-z}' '+l:|=* r:|=*'
compinit

function source_if() {
  [ -f "$1" ] && source "$1"
}

source_if "$(brew --prefix zsh-autosuggestions)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source_if "$(brew --prefix zsh-syntax-highlighting)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source_if "$HOME/zsh/paul.zsh"

export EDITOR=nvim
export TERM=xterm-256color

# jenv
export PATH=$PATH:$HOME/.jenv/bin
eval "$(jenv init -)"

alias vim='nvim'
alias ls='ls -G'
alias ll='ls -l'
alias docker-compose='docker compose'
alias mci mvn clean install

export TYPEWRITTEN_PROMPT_LAYOUT="pure"
export TYPEWRITTEN_RELATIVE_PATH="home"
autoload -U promptinit; promptinit
prompt typewritten

# nvme
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
