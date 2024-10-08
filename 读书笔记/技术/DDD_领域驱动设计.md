
地图就是模型
模型是现实的一种简化,用来描绘人们所关注的现实或想法的某个方面,它把与解决问题密切相关的方面抽象出来，而忽略无 关的细节
模型是一种解决信息超载问题的工具,对知识进行了选择性的简化和有意的结构化。适当的模 型可以使人理解信息的意义，并专注于问题。

# 第一部分：运用领域模型
## 1.消化知识
开发领导，开发与领域专家协作，建模，迭代
相比瀑布方法，信息流由单向变为双向。多了反馈和迭代

消化知识，不断学习，不断迭代
## 2.交流与语言的使用
### 统一语言
### 大声地交流
### 一个团队，一种语言
### 文档和图
UML图：如果可以和代码对应，就变成代码的一种视图了，也就失去了建模的意义
图是为了沟通和交流，如果太大，太细节，就会失去意义
文本为主，图要简明
### 书面文档
原则：作为代码和口头交流的补充
原则：文档应当保持最新
### 解释性模型

## 3.绑定模型和实现
### 模型驱动实现
### hands-on
模型设计不能脱离一线: 得到反馈，修正和优化

# 第二部分：模型驱动设计的构造块
## 4. 分离领域
### 4.1 分层架构：核心是业务层的独立
### 4.3 sartUI模式：DDD的反面，快速，灵活，高效
## 5 软件中所表示的模型
### 关联: 限定关联，简化设计
### entity: 
不是由属性决定，而是由标志决定
有贯穿的生命周期
### value object: 
只关心属性
### service: 
无状态
应用层，领域层，基础设施层，分别有不同的service,注意区分界限
### module: 
高内聚，低耦合
分层设计，可能导致同一个对象，分散到不同的层中
### 建模范式

## 6 领域对象的生命周期
###  6.1 AGGREGATE
图：一串葡萄
 AGGREGATE就是一组相关对象的集合，我们把它作为数据修改的单元。每个AGGREGATE都有一个根（root）和一个边界（boundary）。边界定义了AGGREGATE的内部都有什么。根则是AGGREGATE所包含的一个特定ENTITY。对AGGREGATE而言，外部对象只可以引用根，而边界内部的对象之间则可以互相引用。除根以外的他ENTITY都有本地标识，但这些标识只在AGGREGATE内部才需要加以区别，因为外部对象除了根ENTITY之外看不到其他对象。
### 6.2 FACTORY
处理对象的创建
### 6.3 REPOSITORY
REPOSITORY将某种类型的所有对象表示为一个概念集合（通常是模拟的）。它的行为类似于集合（collection），只是具有更复杂的查询功能。在添加或删除相应类型的对象时，REPOSITORY的后台机制负责将对象添加到数据库中，或从数据库中删除对象。这个定义将一组紧密相关的职责集中在一起，这些职责提供了对AGGREGATE根的整个生命周期的全程访问。
REPOSITORY解除了客户的巨大负担，使客户只需与一个简单的、易于理解的接口进行对话，并根据模型向这个接口提出它的请求。要实现所有这些功能需要大量复杂的技术基础设施，但接口很简单，而且在概念层次上与领域模型紧密联系在一起。
## 7一个示例

# 第三部分：通过重构来加深理解
深层模型
柔性设计
## 8突破
构的投入与回报并非呈线性关系，持续小改进会带来突破
## 9将隐式概念转变为显式概念

## 10柔性设计
### 10.1 INTENTION-REVEALING SELECTOR （释意命名选择器）
在命名类和操作时要描述它们的效果和目的，而不要表露它们是通过何种方式达到目的的。
这样可以使客户开发人员不必去理解内部细节。
在领域的公共接口中，可以把关系和规则表述出来，但不要说明规则是如何实施的；
可以把事件和动作描述出来，但不要描述它们是如何执行的；
可以给出方程式，但不要给出解方程式的数学方法。
可以提出问题，但不要给出获取答案的方法。
### 10.2 SIDE-EFFECT-FREE FUNCTIO
尽可能把程序的逻辑放到函数中，因为函数是只返回结果而不产生明显副作用的操作。严格
地把命令（引起明显的状态改变的方法）隔离到不返回领域信息的、非常简单的操作中。当发现
了一个非常适合承担复杂逻辑职责的概念时，就可以把这个复杂逻辑移到VALUE OBJECT中，这
样可以进一步控制副作用。
### 10.3 ASSERTION
### 10.4 CONCEPTUAL CONTOUR（概念轮廓）
高内聚低耦合
这两条原则既适用于代码，也适用于概念。
在做每个决定时，都要问自己：“这是根据当前模型和代码中的特定关系做出的权宜之计呢，还是反映了底层领域的某种轮廓？”
### 10.5 STANDALONE CLASS
为了理解一个对象而必须保留在大脑中的其他概念都会增加思考负担
低耦合是对象设计的一个基本要素。尽一切可能保持低耦合。把其他所有无关概念提取到对
象之外。这样类就变得完全独立了，这就使得我们可以单独地研究和理解它。每个这样的独立类
都极大地减轻了因理解ＭODULE而带来的负担。
低耦合是减少概念过载的最基本办法。独立的类是低耦合的极致。
### 10.6 CLOSURE OF OPERATION
在 适 当 的 情 况 下 ， 在 定 义 操 作 时 让 它 的 返 回 类 型 与 其 参 数 的 类 型 相 同 。 如 果 实 现 者（implementer）的状态在计算中会被用到，那么实现者实际上就是操作的一个参数，因此参数和返回值应该与实现者有相同的类型。这样的操作就是在该类型的实例集合中的闭合操作。闭合操作提供了一个高层接口，同时又不会引入对其他概念的任何依赖。
这种模式更常用于VALUE OBJECT的操作。
### 10.7 声明式设计
### 10.8 声明式设计风格
### 10.9 切入问题的角度
## 11应用分析模式
## 12将设计模式应用于模型
### 12.1 策略模式
通常，作为设计模式的STRATEGY侧重于替换不同算法的能力，而当其作为领域模式时，
其侧重点则是表示概念的能力，这里的概念通常是指过程或策略规则
### 12.1 COMPOSITE
# 13通过重构得到更深层的理解
(1) 以领域为本；
(2) 用一种不同的方式来看待事物；
(3) 始终坚持与领域专家对话。
# 第四部分：战略设计
## 14保持模型的完整性
型系统领域模型的完全统一即不可行，也不划算。
### 14.1 模式：BOUNDED CONTEXT
细胞之所以能够存在，是因为细胞膜限定了什么在细胞内，什么在细胞外，
并且确定了什么物质可以通过细胞膜
明确地定义模型所应用的上下文。根据团队的组织、软件系统的各个部分的用法以及物理表
现（代码和数据库模式等）来设臵模型的边界。在这些边界中严格保持模型的一致性，而不要受
到边界之外问题的干扰和混淆。
### 14.2 模式：CONTINUOUS INTEGRATION
把一个上下文中的所有工作足够频繁地合并到一起，并使它们
保持一致，以便当模型发生分裂时，可以迅速发现并纠正问题。

建立一个把所有代码和其他实现工件频繁地合并到一起的过程，并通过自动化测试来快速查
明模型的分裂问题。严格坚持使用UBIQUITOUS LANGUAGE，以便在不同人的头脑中演变出不同的
概念时，使所有人对模型都能达成一个共识。
### 14.3 模式：CONTEXT MAP
### 14.4 BOUNDED CONTEXT之间的关系
### 14.5 模式：SHARED KERNEL
从领域模型中选出两个团队都同意共享的一个子集。当然，除了这个模型子集以外，还包括
与该模型部分相关的代码子集，或数据库设计的子集。这部分明确共享的内容具有特殊的地位，
一个团队在没与另一个团队商量的情况下不应擅自更改它。
### 14.6 模式：CUSTOMER/SUPPLIER DEVELOPMENT TEAM
在两个团队之间建立一种明确的客户/供应商关系。在计划会议中，下游团队相当于上游团
队的客户。根据下游团队的需求来协商需要执行的任务并为这些任务做预算，以便每个人都知道
双方的约定和进度。
两个团队共同开发自动化验收测试，用来验证预期的接口。把这些测试添加到上游团队的测
试套件中，以便作为其持续集成的一部分来运行。这些测试使上游团队在做出修改时不必担心对
下游团队产生副作用。

如果上游团队没有动力来满足下游团队的需求, 有下面三种方法：
### 14.7 模式：CONFORMIST(追随者)
通过严格遵从上游团队的模型，可以消除在BOUNDED CONTEXT之间进行转换的复杂性。尽
管这会限制下游设计人员的风格，而且可能不会得到理想的应用程序模型，但选择CONFORMITY
模式可以极大地简化集成。此外，这样还可以与供应商团队共享UBIQUITOUS LANGUAGE。供应商处于统治地位，因此最好使沟通变容易。他们从利他主义的角度出发，会与你分享信息。
### 14.8 模式：ANTICORRUPTION LAYER(隔离层)
创建一个隔离层，以便根据客户自己的领域模型来为客户提供相关功能。这个层通过另一个
系统现有接口与其进行对话，而只需对那个系统作出很少的修改，甚至无需修改。在内部,这个
层在两个模型之间进行必要的双向转换。
### 14.9 模式：SEPARATE WAY（各行其道）
### 14.10 模式：OPEN HOST SERVICE
定义一个协议，把你的子系统作为一组SERVICE供其他系统访问。开放这个协议，以便所有
需要与你的子系统集成的人都可以使用它。当有新的集成需求时，就增强并扩展这个协议，但个
别团队的特殊需求除外。满足这种特殊需求的方法是使用一次性的转换器来扩充协议， 以便使共
享协议简单且内聚。
### 14.11 模式：PUBLISHED LANGUAGE
把一个良好文档化的、能够表达出所需领域信息的共享语言作为公共的通信媒介，必要时在
其他信息与该语言之间进行转换。
### 14.12 “大象”的统一(盲人摸象)
承认多个互相冲突的领域模型实际上正是面对现实的做法。通过明确定义每个模型都适用的
上下文，可以维护每个模型的完整性，并清楚地看到要在两个模型之间创建的任何特殊接口的含义。
盲人没办法看到整个大象，但只要他们承认各自的理解是不完整的，他们的问题就能得到解决。
### 14.13 选择你的模型上下文策略

### 14.14 转换
14.14.1 合并CONTEXT：SEPARATE WAY →SHARED KERNEL
14.14.2 合并CONTEXT：SHARED KERNEL→CONTINUOUS INTEGRATION
14.14.3 逐步淘汰遗留系统
14.14.4 OPEN HOST SERVICE→PUBLISHED LANGUAGE

## 15精炼是把一堆混杂在一起的组件分开的过程，以便通过某种形式从中提取出最重要的内容，
而这种形式将使它更有价值，也更有用。模型就是知识的精炼精炼
### 15.1 模式：CORE DOMAIN
### 15.2 精炼的逐步提升
### 15.3 模式：GENERIC SUBDOMAIN
1. 使用现成方案
2. 使用公开发布的设计或模型
3. 把实现外包出去
4. 内部自己实现
15.3.1 通用不等于可重用
代码可重用
模型可重用
15.3.2 项目风险管理
### 15.4 模式：DOMAIN VISION STATEMENT
DOMAIN VISION STATEMENT可以用作一个指南，它帮助开发团队在精炼模型和代码的过程中
保持统一的方向。团队中的非技术成员、管理层甚至是客户也都可以共享领域愿景说明
### 15.5 模式：HIGHLIGHTED CORE
15.5.1 精炼文档
编写一个非常简短的文档 （3～7页， 每页内容不必太多）， 用于描述CORE DOMAIN以及CORE元素之间的主要交互过程。
15.5.2 标明CORE
把模型的主要存储库中的CORE DOMAIN标记出来， 不用特意去阐明其角色。使开发人员很容易就知道什么在核心内，什么在核心外。
15.5.3 把精炼文档作为过程工具
### 15.6 模式：COHESIVE MECHANISM
把概念上的COHESIVE MECHANISM（内聚机制）分离到一个单独的轻量级框架中。要特别注意公式或那些有完备文档的算法。用一个INTENTION-REVEALING INTERFACE来暴露这个框架的功能。现在，领域中的其他元素就可以只专注于如何表达问题（做什么）了，而把解决方案的复杂细节（如何做）转移给了框架。
### 15.7 通过精炼得到声明式风格
### 15.8 模式：SEGREGATED CORE
对模型进行重构，把核心概念从支持性元素（包括定义得不清楚的那些元素）中分离出来，
并增强CORE的内聚性，同时减少它与其他代码的耦合。把所有通用元素或支持性元素提取到其
他对象中，并把这些对象放到其他的包中——即使这会把一些紧密耦合的元素分开。
### 15.9 模式：ABSTRACT CORE
### 15.10 
### 15.11 
## 16大型结构
## 17领域驱动设计的综合运用
# 结束语