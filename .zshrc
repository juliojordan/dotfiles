autoload -Uz compinit && compinit
# setopt AUTO_CD

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
setopt PROMPT_SUBST; PS1='%F{red}$(__git_ps1 "(%s)")%f\$ '
RPS1='%F{blue}%/%f'

alias ack='ack --color-match="bold red"'
