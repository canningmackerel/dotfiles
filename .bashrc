alias sudo='sudo '
alias rm='rm -i'

# search
stty stop undef
export HISTSIZE=10000
export HISTFILESIZE=10000
alias python=python3

function peco_checkout(){
    git checkout "$(git branch | awk -F ' ' '{print $NF}' | peco)"
}
alias pc="peco_checkout"

# prompt setting
PROMPT_COMMAND='echo'

# prompt color
export PS1='\[\e[1;37;42m\]$(pwd)\[\e[m\] (\[\e[32m\[$(__git_ps1 "%s")\[\e[m\[) $ '

# ls color setting
alias ls='ls -G'
export LSCOLORS=xcfxcxdxbxegedabagacad

# git-prompt
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
