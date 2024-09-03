# 主要有三种
* sysvinit
* UpStart
* systemd

# sysvinit
* 依赖于shell脚本，不能并行
* 依次执行如下：
	1./etc/inittab
	2./etc/rc.d/rc.sysinit
	3./etc/rc.d/rc 和/etc/rc.d/rcX.d/ (X 代表运行级别 0-6)
	4./etc/rc.d/rc.local
	5.X Display Manager（如果需要的话）)

# UpStart
* ubuntu实现
* 基于事件机制: 更快启动，支持热插拔
* job, event

# systemd
* ubuntu 已启用
* 源于苹果的launchd
* 兼容sysvinit和LSB init script
* 进一步提高启动速度
* 用 CGroup 统计跟踪子进程，干净可靠
* 按需启动
* systemd 自带日志服务 journald
* systemd 的主要命令行工具是 systemctl

