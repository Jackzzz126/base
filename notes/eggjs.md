# 缩进
.vimrc
set shiftwidth=2 "shiftwidth"
set expandtab
set tabstop=2
set softtabstop=2

# watch files limit
sudo vim /etc/sysctl.conf
fs.inotify.max_user_watches=524288
sudo sysctl -p

