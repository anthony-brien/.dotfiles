# Reload with:
# source ~/.bash_profile


# Change prompt to use powerline segments
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# export PS1="\n\[\033[38;5;112m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] $YELLOW\$(parse_git_branch) \n\[$(tput sgr0)\]\[\033[38;5;7m\]λ\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Aliases to make command defaults better
alias g='git'
alias ls='ls -GFh'
alias ll='ls -FGlAhp'
alias grep='grep --color=auto'
cd() { builtin cd "$@"; ls; } # Always list directory contents upon 'cd'
alias edit='code' # opens any file in Visual Studio Code
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
#   lr:  Full Recursive Directory Listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
#   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#           displays paginated result with colored search terms and two lines surrounding each hit.            Example: mans mplayer codec
#   --------------------------------------------------------------------
    mans () {
        man $1 | grep -iC2 --color=always $2 | less
    }

# setup git auto completion
# (first ran "curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash")
if [ -f ~/.git-completion.bash ]; then 
    . ~/.git-completion.bash 
fi

# Autocomplete for 'g' as well
complete -o default -o nospace -F _git g