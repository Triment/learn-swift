//变量常量。。命名采用驼峰
//自带类型推断
let maxWidth = 20
var minWidth = 10
var a = 1, b = 2, c = 3

var d: UInt = 89//类型注解
var c1, c2: Double
var desc = "这是一个描述"

//Unicode命名,尽量使用英文，不是所有符号全部支持
var 🐷 = "我"
let π = 3.14
print(maxWidth, minWidth, desc, 🐷, π)//函数支持多参数，和任意类型的支持（可能是通过接口实现的）

//字符串插值
print("π is \(π)")
//分号是可选的
//d = -1
var isDump = false; if (!isDump) {print(a)};
//相关类型有常量
print(UInt8.max,Int.max)

//数值类型转换
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
//浮点转换

let three = 3
let four = Double(three) + 1.9
print(four)
let ten = Int(four + 5)//浮点转换为整数向下取整
print(ten)

//类型别名
typealias age = UInt
var Myself : age = age.min
print(Myself)

//布尔类型
let ImRight = true
print(ImRight)

//tuples
let error = (404, "Not Found")//匿名tuples
print(error)

print("error is \(error.1)")
//命名tuples
let me = (height: 180, widet: "48kg")
print(me.height)


//不确定值
let str = "123"
var num = Int(str)
print(num)//type is Optional ，the value is nil while str is not a legal number

num = 789
print(num==789)
//不确定中的确定
print("value is \(num!)")//!将取出变量的数据域的值，如果没有值强制使用！会导致runtime错误
num = Int("129.0")
//通过if或while进行提取值,num取值失败将被跳过条件执行语句，注意也可以使用var声明，如果你需要在条件语句中改变n的值
if let n = num {
    print(n)
}