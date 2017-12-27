YELLOW="\[\033[0;33m\]"

# Git branch in prompt.
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\n\[\033[38;5;112m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] $YELLOW\$(parse_git_branch) \n\[$(tput sgr0)\]\[\033[38;5;7m\]λ\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
alias ls='ls -GFh'