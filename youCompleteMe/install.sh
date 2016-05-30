#!/bin/sh

TIME=`date +%Y%m%d_%H_%M_%S`

# cmake --help > /dev/null 2>&1
# if [ ! $? = 0 ] ; then
	# echo "cmake didn't install"
	# echo "install cmake "
	# sudo apt-get install cmake
# fi

sudo apt-get install cmake
sudo apt-get install g++ subversion
sudo apt-get install build-essential
sudo apt-get install python python-dev

./install_clang.sh

./install_ycm.sh
