#!/bin/bash
CWD=`cd $(dirname $0) && pwd`
sudo apt-get install ctags
cp -r $CWD/.vim/cfg ~/.vim/
echo "source ~/.vim/cfg/.vimrc.bundles" >> ~/.vimrc

rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/install.sh

echo "source ~/.vim/cfg/.bundles.cfg" >> ~/.vimrc
