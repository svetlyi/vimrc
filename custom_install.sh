sudo apt install zsh vim vim dconf-cli git curl -y
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
cp vimrc ~/.vimrc -i
vim +PluginInstall +qall
mkdir ~/.vim/colors
mv ~/.vim/bundle/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#Terminator:
cd /tmp
git clone https://github.com/sgerrand/xfce4-terminal-colors-solarized.git
cp xfce4-terminal-colors-solarized/light/terminalrc ~/.config/xfce4/terminal/terminalrc
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh
cp zshrc ~/.zshrc
