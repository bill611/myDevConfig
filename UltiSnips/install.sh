#!/bin/sh

TIME=`date +%Y%m%d_%H_%M_%S`

if [ -d ~/.vim/myUltiSnips ] ;then
	mkdir -p ~/.vim/.myUltiSnips_history
	echo "mv ~/.vim/myUltiSnips ~/.vim/.myUltiSnips_history/myUltiSnips_$TIME"
	mv ~/.vim/myUltiSnips ~/.vim/.myUltiSnips_history/myUltiSnips_$TIME
fi

if [ -d myUltiSnips ] ; then
	echo "cp -pr myUltiSnips ~/.vim/myUltiSnips"
	cp -pr myUltiSnips ~/.vim/myUltiSnips
else
	echo "myUltiSnips didn't exist!"
	exit 1
fi

if [ -e clean_history.sh ] ; then 
	echo "cp clean_history.sh ~/.vim/.myUltiSnips_history/ "
	cp clean_history.sh ~/.vim/.myUltiSnips_history/
fi
