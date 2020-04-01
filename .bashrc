alias sudo='sudo '
alias rm='rm -i'

# search
stty stop undef
export HISTSIZE=10000
export HISTFILESIZE=10000
export PATH=/usr/local/bin/python:$PATH

function peco_checkout(){
    git checkout "$(git branch | awk -F ' ' '{print $NF}' | peco)"
}
alias pc="peco_checkout"
