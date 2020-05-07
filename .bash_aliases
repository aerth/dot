# safer rm and mv
alias rm='rm -i'
alias mv='mv -nvi'

# colorizing
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git with UTC time zone in commits
alias git='TZ=UTC /usr/bin/git'

# dmesg2 just filters out UFW logs, no args can be passed
alias dmesg2='dmesg -H -Lalways | grep -v "\[UFW"'

# dmesg3 func allows arguments to be passed
dmesg3(){
  dmesg -H -Lalways $@ | grep -v "\[UFW"
}

# loading nvm takes a while so just do it if necessary
loadnvm(){
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
}

