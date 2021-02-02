#!/bin/bash
#################################
##########git自动批量提交##########
#################################

dateName=`date "+%Y-%m-%d"` #日期
timeName=`date "+%H:%M:%S"` #时间
logs=/www/gitTools/logs/$dateName.log #日志
echo "==========="$timeName"===========" >> $logs

root="/www/" #程序根目录

list=$(ls -F $root | grep '/$') #获取网站列表
for dirname in $list
do
    path=${root}${dirname} #网站绝对路径;
    cd $path #进入网站目录
    isGit=$(ls -a|grep -x .git\ | wc -l) #判断是否有仓库
    if [ $isGit -gt 0 ];then
        isAdd=$(git status | grep "git add" | wc -l) #判断是否需要提交
        if [ $isAdd -gt 0 ];then
            git add -A
            git commit -m 自动提交_$dates_$times #提交信息
            git push origin master #默认master分支
            echo "+提交完成" $path >> $logs
        else
            echo "-没有更改" $path >> $logs
        fi
    else
        echo "x没有仓库" $path >> $logs
    fi
    
done

echo "" >> $logs #隔行


