# git自动批量提交
每个程序员都不可能开发一个项目,每天下班可能忘记提交或者意外导致丢失代码

为了能够让代码丢失率更低,使用git自动批量提交,也许能帮助到您!

## 下载/克隆到你的本地
```
$ git clone git@github.com:aa24615/gitTools.git

```
将脚本放置到任意目录,例如 /www/gitTools/

修改 push.sh 修改您的日志保存路径

## linux/mac平台使用方法

### 请规范放置你的网站项目

/www 作为根目录 多个站点请放在 www/ 下

例如
```
/www/web1/
/www/web2/

```

### 添加到crontab
```
$ crontab -e
 
0 8 * * * sh /www/gitTools/push.sh #每天8点提交一次
0 */1 * * * sh /www/gitTools/push.sh #每隔1小时提交一次
#以上方案仅供参考,请根据自已的需要定制 

```

## win平台使用方法

### 下载git工具
下载地址: [https://git-scm.com](https://git-scm.com)

### 修改配置

将你的网站放在 D:\www\* 或者 C
然后修改 push.sh 网站根目录与日志存放的路径
如果你提放在D盘 则是 /d/www/

### 手动测试

找到你的git安装位置,一般默认安装 C:\Program Files\Git\

按住S+右键 输入命令 "C:\Program Files\Git\git-bash.exe"  你的push.sh路径

"C:\Program Files\Git\git-bash.exe"  D:\www\gitTools\push.sh

> 注意 第一个路径需要加引号,因为Program Files目录中有空格

测试成功即可

### 添加定时器

开始->控制面板->管理工具->任务计划程序
创建任务

![创建任务](img/1.jpg)

添加操作,选择你的git安装位置,选择git-bash.exe
参数为push.sh的路径

![添加操作](img/2.jpg)

设定你想要执行的条件

![条件](img/3.jpg)


## 联系我们

- QQ群: [324098841](http://shang.qq.com/wpa/qunwpa?idkey=6f5462146888da75feaaa1fe1ab3addfcea63f6454548238033c6a91fa610e4e)

- 博客: [blog.php127.com](http://blog.php127.com)
