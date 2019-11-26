# ref: https://www.educba.com/hdfs-vs-hbase/
# HDFS
* 分布式, 廉价, 通用机器
* 单点
* name node, data node
* 只能追加写入
* 3副本, 64M块

* NameNode: 文件，目录与数据块对应，持久化
* NameNode: 数据块与DataNode对应，不持久化, DataNode会定期上报
* DataNode: 保存数据块，执行NameNode的命令
* SecondaryNameNode: NameNode的冷备份(减少损失，不能实时替代)
* SecondaryNameNode: 定时(默认1小时)从namenode上，获取fsimage和edits来进行合并，然后再发送给namenode。减少namenode的工作量。

# HBASE
* Hadoop data base
* base on HDFS
* noSQL
* column-oriented
* random R/W

* master: manage meta data, on name node
* region server: can req by client directly, assign to region, need master help when related to metadata
* region: Memstore, HFile
* zookeeper: central monitor, maintain config, provides distributed synchronization

# Hadoop Ecosystem
Pig(data flow), Hive(SQL), Sqoop
MapReduce
HBASE
HDFS

# HDFS & 小文件
思路：合并，单独建立索引


