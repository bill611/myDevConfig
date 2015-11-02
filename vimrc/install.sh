#!/bin/sh

TIME=`date +%Y%m%d_%H_%M_%S`

if [ -e ~/.vimrc ] ;then
	mkdir -p ~/.vimrc_history
	echo "mv ~/.vimrc ~/.vimrc_history/vimrc_bak_$TIME"
	mv ~/.vimrc ~/.vimrc_history/vimrc_bak_$TIME
fi

if [ -e vimrc ] ; then
	echo "cp vimrc ~/.vimrc"
	cp vimrc ~/.vimrc
else
	echo "vimrc didn't exist!"
	exit 1
fi

