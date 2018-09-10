#Terminator and zsh, gnome terminal customization:
cp zshrc ~/.zshrc
cd /tmp
git clone https://github.com/sgerrand/xfce4-terminal-colors-solarized.git
cp xfce4-terminal-colors-solarized/light/terminalrc ~/.config/xfce4/terminal/terminalrc
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh
