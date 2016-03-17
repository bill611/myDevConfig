#!/bin/sh

ctags --help > /dev/null 2>&1
if [ ! $? = 0 ] ; then
	echo "ctags didn't install"
	echo "install ctags"
	sudo apt-get install ctags
fi

cscope -h > /dev/null 2>&1
if [ ! $? = 0 ] ; then
	echo "cscope didn't install"
	echo "install cscope"
	sudo apt-get install cscope
fi

automake --help > /dev/null 2>&1
if [ ! $? = 0 ] ; then
	echo "automake didn't install"
	echo "install automake"
	sudo apt-get install automake
fi

libtool --help > /dev/null 2>&1
if [ ! $? = 0 ] ; then
	echo "libtool didn't install"
	echo "install libtool "
	sudo apt-get install libtool
fi

