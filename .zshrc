autoload -U promptinit # initialize the prompt system promptinit
promptinit
autoload -Uz compinit && compinit
# setopt AUTO_CD

export GREP_COLOR="01;35"
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto --exclude-dir=node_modules'

alias ls='ls -G'
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'

export EDITOR=vim

__node_version ()
{
    local version=$(node --version)
	local major=$(echo $version | cut -d . -f1)
    printf " (${major})"
}

source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
setopt PROMPT_SUBST; PS1='%c%F{green}$(__node_version)%f%F{magenta}$(__git_ps1 "(%s)")%f\$ '

# ack
alias ack='ack --color-match="bold magenta"'

# fzf
alias vimfzf='vim $(fzf)'

# nvim
# alias vim='nvim'

alias mobidock='ssh -i ~/.ssh/clouding.pem root@217.71.202.61'

source ~/.secrets.sh

# bat
export BAT_THEME=ansi
alias bat='bat --style=plain'
alias cat='bat'

# fzf
export FZF_DEFAULT_OPTS='--color=light --layout=reverse --no-mouse --preview="bat --color=always --style=plain {}"'

# go
export GOPATH=$HOME/gobook

# node
export PATH="/opt/homebrew/opt/node@14/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/node@14/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@14/include"

#kubectl
[[ /opt/homebrew/bin/kubectl ]] && source <(kubectl completion zsh)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/juliojordan/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/juliojordan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/juliojordan/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/juliojordan/google-cloud-sdk/completion.zsh.inc'; fi

