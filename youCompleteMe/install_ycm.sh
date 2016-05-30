#!/bin/sh

cd ~
mkdir ycm_build
cd ycm_build
cmake -G "Unix Makefiles" -DEXTERNAL_LIBCLANG_PATH=~/clang_llvm_3.2/lib/libclang.so . ~/.vim/bundle/YouCompleteMe/cpp
make ycm_core  
make ycm_support_libs 
