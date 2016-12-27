# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

PS1="[\u:\w]\$ "
#grep
export GREP_OPTIONS="--exclude-dir=\.svn"
export GREP_OPTIONS+=" --exclude-dir=\.git"
export GREP_OPTIONS+=" --exclude-dir=node_modules"
export GREP_OPTIONS+=" --exclude-dir=echarts"
export GREP_OPTIONS+=" --exclude-dir=jquery"
export GREP_OPTIONS+=" --exclude-dir=css"
export GREP_OPTIONS+=" --exclude-dir=bootstrap"
export GREP_OPTIONS+=" --exclude-dir=logs"
export GREP_OPTIONS+=" --exclude-dir=useless"
export GREP_OPTIONS+=" --exclude-dir=js"

export GREP_OPTIONS+=" --exclude=tags"

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

