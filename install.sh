# !/bin/sh
if [ ! -d "$HOME/.vim" ]; then
    echo "Installing MDR for the first time"
    ln -fs ~/.vim/vimrc ~/.vimrc
    vim -N "+set hidden" "+syntax on" +PlugInstall +qall
else
    echo "VDR is already installed"
fi
