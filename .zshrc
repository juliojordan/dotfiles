autoload -U promptinit # initialize the prompt system promptinit
promptinit
autoload -Uz compinit && compinit
# setopt AUTO_CD

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

alias ls='ls -G'
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'

source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
setopt PROMPT_SUBST; PS1='%c%F{magenta}$(__git_ps1 "(%s)")%f\$ '

alias ack='ack --color-filename="blue" --color-lineno="black" --color-match="bold red"'
alias vimfzf='vim $(fzf)'

alias vim='nvim'

source ~/.secrets.sh

# node@14
export PATH="/opt/homebrew/opt/node@14/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/node@14/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@14/include"

# bat
export BAT_THEME=ansi
alias bat='bat --style=plain'
alias cat='bat'

# fzf
export FZF_DEFAULT_OPTS='--layout=reverse'
alias fzf='fzf --color=light --no-mouse --preview="bat {}" --reverse'
