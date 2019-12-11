#!/bin/bash
#################################
##########git自动批量提交##########
#################################

dates=`date "+%Y-%m-%d"` #日期
times=`date "+%H:%M:%S"` #时间
logs=/www/gitTools/logs/$dates.log #日志
echo "==========="$times"===========" >> $logs

root="/www/" #程序根目录
list=$(ls -F $root | grep '/$') #获取网站列表
for dirname in $list
do
    path=$root"/"$dirname #网站绝对路径;
    cd $path #进入网站目录
    isGit=$(ls -a|grep -x .git | wc -l) #判断是否有仓库
    if [ $isGit -gt 0 ];then
        isAdd=$(git status | grep "git add" | wc -l) #判断是否需要提交
        if [ $isAdd -gt 0 ];then
            git add .
            git commit -m 自动提交_$dates_$times
            git push origin master
            echo "+提交完成" $path >> $logs
        else
            echo "-没有更改" $path >> $logs
        fi
    else
        echo "x没有仓库" $path >> $logs
    fi
    
done

echo "">>$logs #隔行


