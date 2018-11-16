#!bin/bash

sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
#Install the list of packages above with apt-get
sudo apt-get install terminator
sudo apt install build-essential cmake python3 python3-dev
sudo apt install cmake3
sudo apt-get install tmux 
sudo apt-get install zsh 
sudo apt-get install vim 
sudo apt-get install gnome-tweak-tools 
sudo apt-get install guake
sudo apt-get install nodejs
sudo apt-get install npm
#Install brew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile
#Install oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
#Install base 16 for shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
#Run Youcompleteme script
python3 ~/.vim/bundel/YouCompleteMe/install.py --all
#Install spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
#Install java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
