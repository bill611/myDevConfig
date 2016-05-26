#!/bin/sh

TIME=`date +%Y%m%d_%H_%M_%S`

tmux --help > /dev/null 2>&1
if [ ! $? = 0 ] ; then
	echo "zsh didn't install"
	echo "install zsh "
	sudo apt-get install zsh
	echo "install oh-my-zsh"
	wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
	echo "change bash to zsh"
	chsh -s /bin/zsh
fi

if [ -e ~/.tmux.conf ] ;then
	mkdir -p ~/.tmux_history
	echo "mv ~/.tmux ~/.tmux_history/tmux_bak_$TIME"
	mv ~/.tmux.conf ~/.tmux_history/tmux_bak_$TIME
fi

if [ -e tmux.conf ] ; then
	echo "cp tmux.conf ~/.tmux.conf"
	cp tmux.conf ~/.tmux.conf
else
	echo "tmux.conf didn't exist!"
	exit 1
fi

if [ -e clean_history.sh ] ; then 
	echo "cp clean_history.sh ~/.tmux_history/ "
	cp clean_history.sh ~/.tmux_history/
fi
