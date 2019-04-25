# 权限管理
```sql
grant all privileges on *.* to jack@'localhost' identified by "jack" with grant option;
flush privileges;
show grants for 'jack'@'%';
revoke delete on *.* from 'jack'@'localhost';
```
1. WITH GRANT OPTION 这个选项表示该用户可以将自己拥有的权限授权给别人
2. 8.0以上GRANT不再与IDENTIFIED BY 联用(create a user with GRANT are not allowed)

# 用户管理
```sql
create user 'userName'@'%' identified by "aaa";
rename user 'jack'@'%' to 'jim'@'%';
drop user 'jack'@'localhost';
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('123456');
```

