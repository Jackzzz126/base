# 卸载老版本
如果你安装了老版本，请卸载掉
$ sudo apt-get remove docker docker-engine docker.io

# 安装
1. 更新apt包索引
$ sudo apt-get update
2. 安装包以允许通过HTTPS使用存储库：
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
3. 添加Docker的官方GPG密钥：
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo apt-key fingerprint 0EBFCD88
4. 设置稳定存储库
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# 安装DOCKER CE
1. 更新apt包索引。
sudo apt-get update
2. 安装最新/指定版本的Docker CE
$ sudo apt-get install docker-ce
$ sudo apt-get install docker-ce=<VERSION>
3. 查看Docker CE 版本
docker -v 
Docker version 18.06.1-ce, build e68fc7a
4. 通过运行hello-world映像验证是否正确安装了Docker CE。
$ sudo docker run hello-world

# 卸载Docker CE
1. 卸载Docker CE软件包：
$ sudo apt-get purge docker-ce
2. 主机上的图像，容器，卷或自定义配置文件不会自动删除。要删除所有图像，容器和卷：
$ sudo rm -rf / var / lib / docker
您必须手动删除任何已编辑的配置文件。

