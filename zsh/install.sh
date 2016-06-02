#!/bin/sh

TIME=`date +%Y%m%d_%H_%M_%S`

zsh --help > /dev/null 2>&1
if [ ! $? = 0 ] ; then
	echo "zsh didn't install"
	echo "install zsh "
	sudo apt-get install zsh
	echo "install oh-my-zsh"
	wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
	echo "change bash to zsh"
	chsh -s /bin/zsh
fi

