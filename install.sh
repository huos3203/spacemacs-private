#!/bin/sh
#快捷键方式安装
#需要手动设置
#chsh -s /bin/zsh  #设置zsh为默认的shell命令

root=`pwd`
spaceemacs.d=${root}/Util/iSpacemacsd
#sed -i '' "s#export ZSH=.*#export ZSH='$zshDIR'#g" $template
cd ~/
pwd
target=".spaceemacs.d"
ln -fs ${spaceemacs.d} ${target}


