# 免密登录

serverA 服务器的 usera 用户免密码登录 serverB 服务器的 userb用户。

* 我们先使用usera 登录 serverA 服务器
ssh-keygen -t rsa
此时会在/home/usera/.ssh目录下生成密钥对 id_rsa id_rsa.pub

* 然后将公钥上传到serverB 服务器的，并以userb用户登录
ssh-copy-id userb@serverB //确保serverB存在.ssh目录

* .ssh目录的权限为700，其下文件authorized_keys和私钥的权限为600

# 跳板服务器设置
添加以下内容到"~/.ssh/config"文件
Host server2Conn
    HostName 10.0.0.3
    Port 22
    User root
    ProxyCommand ssh -p 20000 跳板服务器用户名@跳板服务器 -W %h:%p


