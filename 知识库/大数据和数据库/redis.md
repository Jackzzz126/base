# redis.js 安装

wget http://download.redis.io/releases/redis-5.0.4.tar.gz
tar xvf redis-5.0.4.tar.gz
cd redis-5.0.4/
make
sudo make install
cd utils
sudo ./install_server.sh

