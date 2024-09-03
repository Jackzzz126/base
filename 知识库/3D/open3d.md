# install pyenv & pyton 3.6.8 on ubuntu16.04
```bash
#pyenv
mkdir ~/.pyenv
git clone git://github.com/yyuu/pyenv.git .pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_rc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_rc
echo 'eval "$(pyenv init -)"' >> ~/.bash_rc
source ~/.bash_rc
#python 3.6.8
sudo apt-get install libc6-dev gcc
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
pyenv install -v 3.6.8
pyenv global 3.6.8
```
# install python on ubuntu16.04
```bash
pip3 install open3d-python
#pip still python 2.7
#install python by compile faild, guess is pip error
```
# compile & install C++ on ubuntu16.04
```bash
git clone --recursive https://github.com/intel-isl/Open3D
#can't move to other path, otherwise will cause error
util/scripts/install-deps-ubuntu.sh
mkdir build
cd build
cmake ..
make
#make sure "/usr/lib/x86_64-linux-gnu/libGL.so" exist
make install
```

