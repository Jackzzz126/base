# Yet Another Markup Language

## YAML使用冒号加缩进的方式代表层级（属性）关系，使用短横杠(-)代表数组元素。
## 使用#作为注释，YAML中只有行注释。

## 基本格式要求
1. YAML大小写敏感；
2. 使用缩进代表层级关系；
3. 缩进只能使用空格,不能使用TAB
不要求空格个数,只需要相同层级左对齐（一般2个或4个空格）

## 对象使用冒号代表，格式为key: value。冒号后面要加一个空格：

## 流式(flow)语法：
key: {child-key: value, child-key2: value2}

## 复杂对象
使用问号加一个空格代表一个复杂的key，配合一个冒号加一个空格代表一个value：
```yaml
?  
    - complexkey1
    - complexkey2
:
    - complexvalue1
    - complexvalue2
```
## 使用一个短横线加一个空格代表一个数组项：

companies: [{id: 1,name: company1,price: 200W},{id: 2,name: company2,price: 500W}]
常量
##常量结构，包括：整数，浮点数，字符串，NULL，日期，布尔，时间
```yaml
boolean: 
    - TRUE  #true,True都可以
    - FALSE  #false，False都可以
float:
    - 3.14
    - 6.8523015e+5  #可以使用科学计数法
int:
    - 123
    - 0b1010_0111_0100_1010_1110    #二进制表示
null:
    nodeName: 'node'
    parent: ~  #使用~表示null
string:
    - 哈哈
    - 'Hello world'  #可以使用双引号或者单引号包裹特殊字符
    - newline
      newline2    #字符串可以拆成多行，每一行会被转化成一个空格
date:
    - 2018-02-17    #日期必须使用ISO 8601格式，即yyyy-MM-dd
datetime: 
    -  2018-02-17T15:02:31+08:00    #时间使用ISO 8601格式，时间和日期之间使用T连接，最后使用+代表时区
```
## 一些特殊符号
### 同一个文件中，使用---表示一个文档的开始
### ...和---配合使用，在一个配置文件中代表一个文件的结束：
### !! YAML中使用!!做类型强行转换：
### >在字符串中折叠换行, | 保留换行符
### 重复的内容在YAML中可以使用&来完成锚点定义，使用*来完成锚点引用
### 合并内容: 和锚点配合使用,可以将一个锚点内容直接合并到一个对象中

