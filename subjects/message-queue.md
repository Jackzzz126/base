# message queue

##好处
* 解耦: 只需与MQ通信
* 提速: 无需等待
* 广播: 方便订阅，扩展
* 削峰: 可保存，慢慢处理

##成本

* 引入复杂度: 多了一层, 多用服务器
* 暂时的不一致性: 可能暂时还没处理完

##条件

* 不需反馈: 生产不需等待消费
* 容许暂时不一致

