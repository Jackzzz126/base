
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
