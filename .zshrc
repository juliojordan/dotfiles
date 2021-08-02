alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

source ~/.git-prompt.sh
setopt PROMPT_SUBST ; PS1='%c$(__git_ps1 "(%s)")\$ '

alias ack='ack --color-match="bold red"'
