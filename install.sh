#!/bin/sh

for dir in $(ls) ;do
	if [ -d $dir ] ; then
		cd $dir 
		if [ -e install.sh ] ; then
			./install.sh
		else 
			echo "$PWD"
			echo "file:install.sh didn't exist"
			exit 0
		fi
		cd ../
	fi
done

