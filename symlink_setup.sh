ln -s ~/homedir/.zshrc ~/.zshrc
ln -s ~/homedir/.gitconfig ~/.gitconfig
ln -s ~/homedir/.tmux.conf ~/.tmux.conf

mkdir -p ~/bin
rm ~/bin/util;
ln -s ~/homedir/bin/util ~/bin/util
