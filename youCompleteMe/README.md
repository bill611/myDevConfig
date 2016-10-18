-----------------vim8.0安装----------------
vim版本需要7.4以上，目前apt-get install的版本不支持，需要在官网下载vim8.0源码编译安装
卸载原有vim : 
	sudo apt-get remove vim vim-runtime vim-common
安装libncurses5-dev :
	sudo apt-get install libncurses5-dev
vim官网: 
	http://www.vim.org/download.php
下载解压后,进入解压后文件夹
执行 ./configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux/ --enable-perlinterp --enable-gui=gtk2 --enable-cscope --enable-luainterp --enable-multibyte --enable-xim --enable-gdb --prefix=/usr
修改 src/Makefile 1213行，支持vi命令
	LINKIT = ln -f -s $(DEST_BIN)/$(VIMTARGET) $(DESTDIR)/usr/bin/vi
	# LINKIT = @echo >/dev/null
make
sudo make install
--------------------end--------------------

-----------------clang安装-----------------
www.llvm.org 下载相应版本的llvm和clang

下载完成后，直接将下载后的压缩文件解压，并进入其目录
tar zxvf clang+llvm-3.7.0-amd64-Ubuntu-14.04..tar.gz
cd clang+llvm-3.7.0-amd64-Ubuntu-14.04.
sudo cp -R * /usr/
sudo ln -sf /usr/bin/clang++ /etc/alternatives/c++
运行：clang --version 如果您看到了它的版本号，就说明 llvm 和 clang配置好了。
--------------------end--------------------

-----------------Youcompleteme脚本安装-----------------
cd ~/.vim/bundle/YouCompleteMe
Compiling YCM with semantic support for C-family languages:
./install.py --clang-completer
Compiling YCM without semantic support for C-family languages:
./install.py

根据提示运行git命令，补充third_paty
git submodule update --init --recursive
--------------------end--------------------
