# key words
* highly scalable:
    - index分为片，片分布到不同节点; 
    - 主片(shard)数量固定，从片(replica)不定；
    - 片自动在节点间迁移
* open-source
* full-text search & analytics engine

# Basic concepts
* NRT: near realtime(about 1s)
* cluster: nodes withs same name
* index: similar with database in mysql, name must be all lowercase
* type: like table in mysql, in index(will removed in v8.x)
* document: in json, in index/type
* same field in same index must have same type
* shards & replicas: index devided into shards, make replacas of shards in diff nodes

