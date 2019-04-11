# node.js 安装

1. wget https://nodejs.org/dist/v8.9.3/node-v8.9.3-linux-x64.tar.xz
2. tar -xvf node-v8.9.3-linux-x64.tar.xz
3. sudo cp -r node-v8.9.3-linux-x64 /usr/local
4. sudo ln -s /usr/local/node-v8.9.3-linux-x64/bin/node /usr/local/bin/node 
5. sudo ln -s /usr/local/node-v8.9.3-linux-x64/bin/npm /usr/local/bin/npm 
6. add "prefix=/usr/local/" to .npmrc or run `npm config set prefix "/usr/local/"`
