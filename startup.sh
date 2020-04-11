#!/bin/sh

# install homebrew
# https://brew.sh/index_ja
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install python3 vim peco
pip3 install jedi flake8 ale

# install vim-plug
# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.bashrc ~/.bashrc
ln -s ~/.bashrc ~/.bash_profile

# install git-prompt
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
