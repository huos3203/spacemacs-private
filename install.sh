#!/bin/sh
#快捷键方式安装
#需要手动设置
#chsh -s /bin/zsh  #设置zsh为默认的shell命令
spaceemacs=`pwd`
echo ${spaceemacs}
target=".spaceemacs.d"
cd ~/
ln -fs ${spaceemacs} ${target}


