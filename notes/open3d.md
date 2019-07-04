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


