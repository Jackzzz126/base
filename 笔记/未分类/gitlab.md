# 安装
1. 安装SSH服务，在系统防火墙中打开HTTP和SSH访问
sudo yum install -y curl policycoreutils-python openssh-server #安装ssh
sudo systemctl enable sshd #设为开机启动
sudo systemctl start sshd #启动
sudo firewall-cmd --permanent --add-service=http #打开HTTP
sudo systemctl reload firewalld #重启，使防火墙修改生效

2. 安装Postfix以发送通知电子邮件
sudo yum install postfix #装Postfix以发送通知邮件
sudo systemctl enable postfix #设为开机启动
sudo systemctl start postfix #启动
3. 添加GitLab包存储库
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash
4. 安装GitLab包
yum install -y gitlab-ee
5. 显示安装成功后
gitlab-ctl reconfigure

# 配置邮件(126)
etc/gitlib/gitlab.rb

gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_tls'] = true
gitlab_rails['smtp_address'] = "smtp.126.com"
gitlab_rails['smtp_port'] = 465
gitlab_rails['smtp_user_name'] = "xxx@126.com"
gitlab_rails['smtp_password'] = "授权码"
gitlab_rails['smtp_domain'] = "126.com"
gitlab_rails['smtp_authentication'] = "login"
gitlab_rails['smtp_enable_starttls_auto'] = true
gitlab_rails['smtp_openssl_verify_mode'] = 'peer'

"gitlab_email_from" 和 "smtp_user_name"必须一样

# 配置域名或IP(激活邮件会用到)
etc/gitlib/gitlab.rb

external_url

