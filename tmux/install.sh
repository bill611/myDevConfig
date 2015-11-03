#!/bin/sh

TIME=`date +%Y%m%d_%H_%M_%S`

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
