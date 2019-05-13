# git自动批量提交
每个程序员都不可能开发一个项目,每天下班或者意外可能丢失代码
为了能够让代码丢失率更低,使用git自动批量提交,也许能帮助到您!

## 下载/克隆到你的本地
```
$ git clone git@github.com:aa24615/gitTools.git

```
将脚本放置到任意目录,例如 /www/gitTools/

## linux/mac平台使用方法

####请规范放置你的网站项目
/www 作为根目录 多个站点请放在 www/ 下
例如
```
/www/web1/
/www/web2/

```

###自动提交请将本脚本添加到 crontab 中 最少每天执行一次
```
$ crontab -e
 
0 8 * * * sh /www/gitTools/push.sh #每天8点提交一次
0 */1 * * * sh /www/gitTools/push.sh #每隔1小时提交一次


```

##win平台使用方法
整理中...

## 作者博客

- [http://blog.php127.com/](http://blog.php127.com/) 