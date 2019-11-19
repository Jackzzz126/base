# install & init
* install: sudo apt install mysql-client mysql-server
* default user & pwd: sudo cat /etc/mysql/debian.cnf
* creat db: create database if not exists db_name default charset utf8 collate utf8_general_ci;

# 用户管理
```sql
create user 'userName'@'%' identified by "aaa";
rename user 'jack'@'%' to 'jim'@'%';
drop user 'jack'@'localhost';
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('123456');
```

# 权限管理
```sql
grant all privileges on *.* to jack@'localhost' identified by "jack" with grant option;
flush privileges;
show grants for 'jack'@'%';
revoke delete on *.* from 'jack'@'localhost';
```
1. WITH GRANT OPTION 这个选项表示该用户可以将自己拥有的权限授权给别人
2. 8.0以上GRANT不再与IDENTIFIED BY 联用(create a user with GRANT are not allowed)

# 外网访问
1. sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
2. sudo systemctl restart mysql

# 导入导出
## 导出整个数据库结构和数据
mysqldump -h localhost -uroot -p123456 database > dump.sql

## 导出单个数据表结构和数据
mysqldump -h localhost -uroot -p123456  database table > dump.sql

## 导出整个数据库结构（不包含数据）
mysqldump -h localhost -uroot -p123456  -d database > dump.sql

## 导出单个数据表结构（不包含数据）
mysqldump -h localhost -uroot -p123456  -d database table > dump.sql

## 导入
```sql
mysql -uname -ppwd dbName < xxx.sql
```

# 重置表
## 方法一(效率高，谨慎使用)：
truncate table table_name;
注意：truncate 一次性地从表中删除所有的数据并不把单独的删除操作记录记入日志保存，删除行是不能恢复的。并且在删除的过程中不会激活与表有关的删除触发器。执行速度快。
是DLL语言，无法回滚；当表被TRUNCATE 后，这个表和索引所占用的空间会恢复到初始大小。

## 方法二(数据量大则效率低)：
delete from table_name;
alter table table_name auto_increment= 1;

## 忽略外键约束
SET FOREIGN_KEY_CHECKS = 0;
delete from xxxx;
SET FOREIGN_KEY_CHECKS = 1;

