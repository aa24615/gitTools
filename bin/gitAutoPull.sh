#!/bin/bash
#################################
##########git自动批量拉取##########
#################################

root="/www/wwwroot/" #程序根目录

list=$(ls -F $root | grep '/$') #获取网站列表
for dirname in $list
do
    path=${root}${dirname} #网站绝对路径;
    cd $path #进入网站目录
    git pull
done
