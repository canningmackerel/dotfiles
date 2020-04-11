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

# prompt color
PS1='\[\e[42m\] \w\[\e[m\] $ '
