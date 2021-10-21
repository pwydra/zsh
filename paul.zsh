function settitle() {
  echo -n -e "\033]0;${1}\007\c"
}

function settitlepwd() {
  settitle $(basename `pwd`)
}

export PATH=/usr/local/bin:${HOME}/bin:$PATH

export HISTIGNORE="$HISTIGNORE:vault write*"

export MAVEN_OPTS="-Xms512m -Xmx1024m"

export CLICOLOR=1
export HISTTIMEFORMAT="%d/%m/%y %T "
#
# Aliases
alias ll='ls -al'
alias mci='mvn clean install -U'
alias mci-not='mvn -Dmaven.test.skip=true clean install -U'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
