//: Playground - noun: a place where people can play

import UIKit

//1.如何定义字典
//1>定义不可变字典:使用let修饰
let a : Int = 10
//let dict: Dictionary<String, Any> = ["name":"why", "age":18, "height":1.88 ]
//let dict = ["name":"why", "age":18, "height":1.88 ] as [String : Any]
//let dict = ["123":"321", "abc":"cba"] 类型相同，不需要进行转化
let dict: [String:Any] = ["name":"why", "age":18, "height":1.88 ]

//2>定义可变字典:使用var修饰
//var dictM = Dictionary<String, Any>()
var dictM = [String : Any]()

//2.对可变字典的基本操作(增删改查)
//2.1添加元素
dictM["name"] = "why"
dictM["age"] = 18
dictM["height"] = 1.88
dictM

//2.2删除元素
dictM.removeValue(forKey: "height")
dictM

//2.3修改元素
dictM["name"] = "tom"
dictM.updateValue("jeck", forKey: "name")
dictM

//2.4查找元素
dictM["age"]

//3.遍历字典
//3.1遍历字典中所有的key
for key in dict.keys {
    print(key)
}

print("---------------")
//3.2遍历字典中所有的value
for value in dict.values {
    print(value)
}
//3.1遍历字典中所有的key/value
for (key, value) in dict {
    print(key, value)
}

//4.字典合并
var dict1 : [String : Any] = ["name" : "why", "age" : 18]
let dict2 : [String :Any] = ["height":1.88, "phoneNum" : "+86 119"]
//let resultDict = dict1 + dict2
for (key, value) in dict2 {
    dict1[key] = value
}
dict1




