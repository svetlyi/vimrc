#Install all the necessary stuff + VIM customization
sudo apt install vim git curl -y
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
cp vimrc ~/.vimrc -i
vim +PluginInstall +qall
mkdir ~/.vim/colors
mv ~/.vim/bundle/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim
