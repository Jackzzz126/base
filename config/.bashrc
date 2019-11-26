# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#----------------------ps-----------------------------
PS1="[\u:\w]\$ "
#----------------------grep-----------------------------
GREP_OPTIONS="--exclude-dir=\.svn"
GREP_OPTIONS+=" --exclude-dir=\.git"
GREP_OPTIONS+=" --exclude-dir=node_modules"
GREP_OPTIONS+=" --exclude-dir=echarts"
GREP_OPTIONS+=" --exclude-dir=jquery"
GREP_OPTIONS+=" --exclude-dir=css"
GREP_OPTIONS+=" --exclude-dir=bootstrap"
GREP_OPTIONS+=" --exclude-dir=logs"
GREP_OPTIONS+=" --exclude-dir=useless"
GREP_OPTIONS+=" --exclude-dir=js"
GREP_OPTIONS+=" --exclude-dir=tlogs"
GREP_OPTIONS+=" --exclude-dir=data"
GREP_OPTIONS+=" --exclude-dir=data_temp"

GREP_OPTIONS+=" --exclude=tags"
GREP_OPTIONS+=" --exclude=*.csv"
GREP_OPTIONS+=" --exclude=*.json"

GREP_OPTIONS+=" --binary-files=without-match"
GREP_OPTIONS+=" --color=auto"

alias grep="/bin/grep $GREP_OPTIONS"

#----------------------go-----------------------------
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

