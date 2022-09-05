# czh-blogs-api
czh-blogs-api

+ Java
+ Spring
+ Spring Boot
+ MySQL
+ MyBatis-Plus

---
Window搭环境

+ 略

---
Ubuntu搭环境
### JDK8安装

+ 更新软件包列表：

``
sudo apt-get update
``

+ 安装openjdk-8-jdk：

``sudo apt-get install openjdk-8-jdk
``

+ 查看java版本，看看是否安装成功：

``java -version``

### MySQL安装

+ 安装：

``sudo apt install mysql-server-8.0``

+ 配置
Ubuntu下安装mysql8.0之后，默认root用户是没有密码的，可以使用如下命令直接进入MySQL

`` sudo mysql -uroot``

+ 设置root密码：

 ````
 mysql> use mysql;
 
 mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '你的密码';
 
 mysql>flush privileges;
 
 mysql> quit;
````

+ 重启MySQL服务:

`` sudo systemctl restart mysql.service``

+ 完成上面的步骤之后，就可以使用下面的命令来登录MySQL了:

``sudo mysql -uroot -p``