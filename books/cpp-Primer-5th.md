## 1 begin

# basic
==================================================

## 2 变量和基本类型

### 2.1 基本内置类型
对应硬件，导致类型庞杂
c++11: long long, 64bits minimal
float vs double: 优先选择double，甚至更快

### 2.2 变量
变量：类型 + 1-N个变量名，逗号分隔，分号结束
初始化 != 赋值
c++11: `int a{0};`, a初始化为0
c++11: `int a = {0};`, a初始化为0
c++11: 列表初始化，不能丢失精度,否则会报错

### 2.3 复合类型
引用不是对象，所以不能定义引用的引用或引用的指针
同时定义多个引用或指针，每个前面都要加&或*
c++11: nullptr字面值
指针的引用：`int *&r = p;` r 为指针 p 的引用

### 2.4 const限定符
const 默认文件可见，共享，需加`extern`声明
`int *const p = ***;`, 指针是常量
`const int * p = ***;`, 指针指向对象是常量
c++11: 常量表达式:值不会改变且编译时就能计算出结果
c++11: constexpr类型，常量，必须用常量表达式初始化

### 2.5 处理类型
c++11: `using xxx = yyy`, xxx 是 yyy 的同义词
c++11: auto 由编译器通过初始值来推断类型，必须有初始值
c++11: decltype 推断出类型，但并不使用

### 2.6 自定义数据结构
c++11: 类内初始值: 未指定，则用此值

## 3 字符串，向量和数组

### 3.1 命名空间的using

### 3.2 std::string
string支持cout，cin，忽略空白
getline 会保留空白
`while(cin>>word);` 读到EOF时结束
c++11: `auto len = str.size();` len的类型是string::size_type, 无符号
cmath = cmath.h + 加入std命名空间 + C++语法
c++11: `for(char a : string)`, 范围for
c++11: `for(char &a : string)`, 返回引用，可用来修改
`(decltype(str.size())) index = 0;` decltype 用法

### 3.3 std::vector
vector只能包含对象，引用不是对象，所以不能有引用的vector
c++11: vector支持列表初始化

### 3.4 迭代器
c++11: cbegin, cend返回常量迭代器
迭代器循环内，不要添加元素

### 3.5 数组
理解复杂声明：由内向外。例如：`int *(&arr)[10]])`, arr是数组的引用，该数组长10，类型是int
数组作为auto的初始值，会推断为指针, decltype不会转指针
c++11: 数组，begin，end函数, 提供类似迭代器的功能

### 3.6 多维数组

## 4 表达式

### 4.1 基础
优先级: 一元 > 乘除 > 加减
结合律: 一般左结合(从左到右)
执行顺序: 除`&&`，`||`，`?:`, `,`,外, 一般不规定
c++11: 商一律向0取整

### 4.2 算数运算符

### 4.3 逻辑和关系运算符

### 4.4 赋值运算符

### 4.5 递增和递减运算符
非必要，用前置

### 4.6 成员访问运算符

### 4.7 条件运算符

### 4.8 位运算符

### 4.9 sizeof运算符
两种形式：`sizeof(type); sizeof expr`
C++11: sizeof class::member 合法

### 4.10 逗号运算符

### 4.11 类型转换
static_cast: 强制转换, 常用大类型赋值给小类型
dynamic_cast: 运行时，基类指针转派生类指针
const_cast: 去掉const属性，本来就是const的，强制去掉，结果未定义。常用于函数重载。
reinterpret_cast: 为运算符的为模式提供新解释。例如：int* 转成 char*

### 4.12 运算符优先级

## 5 语句

### 5.1 简单语句
语句: 表达式 + ";", 执行语句, 丢弃求值结果
复合语句(块), 带有作用域

### 5.2 语句作用域

### 5.3 条件语句

### 5.4 迭代（循环）语句
C++11: 范围for，遍历容器，序列

### 5.5 跳转语句

### 5.6 try和异常处理

## 6 函数

### 6.1 函数基础
函数不能返回数组和函数，但能返回指向他们的指针

### 6.2 参数传递
可变形参： initiallizer_list, 可变参数模板，省略号

### 6.3 返回类型和return
C++11: 可以返回花括号包围的值列表
C++11: 位置返回类型: `auto func(...) -> ***`, "***"表示真正的返回类型
C++11: decltype

### 6.3 函数重载
有顶层const和无顶层const的形参，无法区分

### 6.4 重载与作用域

### 6.5 特殊用途特性
默认实参，内联函数， constexpr
c++11: constexpr函数：返回值及所有形参都是字面值。有且只有一条return语句
assert: 宏定义，预处理器管理
预处理器定义：`__FILE__, __LINE__, __TIME__, __DATE__`

### 6.6 函数匹配

### 6.6 函数指针
把函数名作为值使用时，自动转换为指针
函数形参，当成指针使用

## 7 类

### 7.1 定义抽象数据类型
c++11: "= default", 由编译器生成默认构造函数

### 7.2 访问控制和封装

### 7.3 类的其他特性

### 7.4 作用域

### 7.5 构造函数再探
c++11: 委托构造函数, 在构造函数中调用其他构造函数
explicit: 阻止隐式转换

### 7.6 类的静态成员

# std lib
==================================================

## 8 IO库
IO对象，无拷贝或者赋值，不能做形参火返回类型, 传递非const引用

## 9 顺序容器
c++11: emplace: 构造而非拷贝
适配器: 容器封装

## 10 泛型算法
算法: 运行在迭代器上
lambda: 可调用，未命名，可定义在函数内部, 必须尾置返回
lambda: 值捕获在lambda对象创建是拷贝，而不是调用时候拷贝
c++11: bind，标准库函数

## 11 关联容器
有序: key 支持`<`操作符，无序: key支持`==`操作符

## 12 动态内存
shared_ptr: 多个指针，同一对象(引用计数)
unique_prt: 指向对象唯一指针，指针销毁，对象跟着销毁
weak_ptr: 指向shared_ptr所指对象，不改变其计数

# class
==================================================

## 13 拷贝控制
c++11: `=delete`来禁止使用

## 14 操作符重载与类型转换
## 15 面向对象程序设计
数据抽象，继承，动态绑定
## 16 模板与泛型编程

# advenced
==================================================

## 标准库特殊设施
c++11: tuple: 类似pair, 成员更多

## 用于大型程序的工具
c++11: noexcept：标识函数不会抛出异常
c++11: 内联命名空间
c++11: 未命名命名空间

## 多重继承与虚继承

## 特殊工具与技术

