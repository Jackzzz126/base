#用户管理
* 添加用户
useradd是命令，adduser是脚本，更友好

* root 管理
sudo passwd root		设置密码，启用root
sudo passwd -l root		锁定root

# 添加用户到sudo组
vi /etc/group

# 修改ssh监听端口
vi /etc/ssh/sshd_config
执行"/etc/init.d/ssh restart"，重启ssh服务

#SSH登陆认证慢的解决办法

1. 关闭ssh的gssapi认证 
vi /etc/ssh/ssh_config注释掉如下两行
GSSAPIAuthentication yes
GSSAPIDelegateCredentials no
 
2. 关闭ssh的UseDNS
  vi /etc/ssh/sshd_config
  在末尾处插入如下行：
  UseDNS no
3. 执行"/etc/init.d/ssh restart"，重启ssh服务

# crontab
NODE=/usr/local/bin/node
PUSHPATH=/mnt/DISK2/SRC/jack/push-server/script
LOG=cron.log
*>---* * *>--root>---cd $PUSHPATH && $NODE excutePushScheduleAll.js >> $LOG

# 更新源
add follow to "/etc/apt/sources.list"

deb http://mirrors.163.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ bionic-backports main restricted universe multiverse

