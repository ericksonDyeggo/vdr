# !/bin/sh
if [ ! -d "$HOME/.vim" ]; then
    echo "Installing VDR for the first time"
    git clone --depth=1 https://github.com/ericksonDyeggo/vdr.git "$HOME/.vim"
    ln -fs ~/.vim/vimrc ~/.vimrc
    vim -N "+set hidden" "+syntax on" +PlugInstall +qall
else
    echo "VDR is already installed"
fi
