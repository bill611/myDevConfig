#!/bin/sh

cd ~
mkdir Clang && cd Clang
svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm
cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
cd ../../
mkdir build
cd build
# ../llvm/configure --prefix=/usr/clang_3_3 --enable-optimized --enable-targets=host
cmake -G "Unix Makefiles" ../llvm
make -j 4
sudo make install

export PATH=/usr/clang_3_3/bin:$PATH     #这一句最好写到~/.bashrc内
