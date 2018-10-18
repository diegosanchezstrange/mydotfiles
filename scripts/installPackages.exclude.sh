#!bin/bash
list="vim tmux zsh gnome-tweak-tools guake"
echo "This program will automatically install some basic coding related
packages"
echo "Proceed? (y/n)"
read res
if [ "$res" = 'y' -o "$res" = 'Y'] ; then
	#Install the list of packages above
	apt-get install $list -y
	#Install oh-my-zsh
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
	#Install spotify
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
	echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
	sudo apt-get update
	sudo apt-get install spotify-client
	#Install java
	sudo add-apt-repository ppa:webupd8team/java
	sudo apt-get update
	sudo apt-get install oracle-java8-installer



fi
