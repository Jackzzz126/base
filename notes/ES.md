# ES常见操作记录(基于7.x版本)

## 模板
### 查询所有模板
GET _template/XXX*
### 删除模板
DELETE _template/XXX
### 创建模版1
PUT _template/sms_update_tmp_template
```json
{
    "index_patterns":[
        "XXX*"
    ],
    "order":0,
    "aliases":{
        "XXX":{
        }
    },
    "settings":{
        "number_of_shards":10,
        "number_of_replicas":1
    },
    "mappings":{
        "_source":{
            "enabled":false
        },
        "properties":{
            "aaa":{
                "type":"date",
                "format":"yyyy-MM-dd HH:mm:ss"
            },
            "bbb":{
                "type":"integer",
                "index":false
            },
            "ccc":{
                "type":"text",
                "analyzer":"ik_smart"
            }       
        }
    }
}
```
### 创建模版2
PUT _template/template_ccop_balance_log
JSON示例
```json
{
  "settings": {
    "index": {
      "number_of_shards": "32",
      "number_of_replicas": "1"
    }
  },
  "mappings": {
    "properties": {
      "orgId": {
        "type": "long"
      },
      "balanceType": {
        "type": "integer"
      },
      "balanceTypeName": {
        "type": "keyword"
      },
      "oldBalance": {
        "type": "long"
      },
      "newBalance": {
        "type": "long"
      },
      "deltaBalance": {
        "type": "long"
      },
      "updater": {
        "type": "keyword"
      },
      "updateReason": {
        "type": "integer"
      },
      "updateReasonName": {
        "type": "keyword"
      },
      "updateTime": {
        "format": "yyyy-MM-dd HH:mm:ss||yyyy-MM-dd HH:mm:ss.SSS||yyyy-MM-dd'T'HH:mm:ss.SSSZ",
        "type": "date"
      }
    }
  },
  "aliases": {
    "ccop_balance_log": {}
  },
  "index_patterns": [
    "ccop_balance_log_*"
  ],
  "order": 0
}
```

## 索引
### 查询所有
GET _cat/indices
### 删除
DELETE /index_name
### 新建
PUT /index_name
### 复制
POST _reindex
{
  "source": {
    "index": "旧索引"
  },
  "dest": {
    "index": "新索引",
    "op_type": "create"
  }
}

## 搜索和聚合



