# swiftDemo

需求一：5种cell
tableView中存在5种类型cell，定义5种类型的cell，并注册tableview


需求二：从5个接口获取数据
定义tableFactory类 作为tableview的数据源和代理 在初始化时默认从5个方法中获取数据


需求三：扩展性
根据面向协议编程概念
定义全局变量作为cell的ReuseIdentifier.限制cell的类型
定义cell的协议类，让5种cell遵守该协议，根据实际cell的种类调用相应的协议方法


实际项目中增加新的cell种类只需实现协议，增加全局变量，完成新cell的tableview注册及dequeue方法即可




