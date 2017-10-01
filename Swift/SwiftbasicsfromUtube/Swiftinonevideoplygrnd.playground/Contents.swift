//: Playground - noun: a place where people can play
import Darwin// to import the lot of functions we use this
import UIKit

var str = "Hello, playground"

var heollo = "hi"
var msg: String = "padmakumar"
print ("helo  \(msg) ")
let pi :Int = 38290939
var myAge:Int = 24
var pi2 :Float = 3.08929
var pi3 :Double = 3.08929
var pi9 :Int64 = 308929
var pi4 :Float = 3.08929

var pi5 :Float = 3.08929


print("max int \(Int64.max)")
print("max int \(Int64.min)")
print("max int \(Float.greatestFiniteMagnitude)")
print("max int \(Double.greatestFiniteMagnitude)")
print("max int \(Double.leastNormalMagnitude)")
var ranstring = str + msg
print ("helo  \(msg.characters.count) ")
print ("helo  \(msg.startIndex) ")
print ("empty:  \(msg.isEmpty) ")
msg.insert("A",at: msg.startIndex)
msg.insert(contentsOf: " dint recognize me ".characters, at: msg.index(msg.startIndex,offsetBy:1))
print(msg)


//array
var array = [Int]()
print("empty:\(array.isEmpty)")
array += [45,5,5,5,23,44,4,4,34,5,5,]
array .append(452)
array.index(after: 0)
array.insert(10, at: 5)
array.remove(at: 9)
array[1...5] = [1,4,3,2,2,29]
var array2 = Array(repeating: 9, count: 5)
var array3 = array + array2
for item in array3{
   
}
for (Index, value) in array3.enumerated(){
    print("\(index): \(value)")
}
for i in 1...5{
    print(i)
}
//DICTIONARY
var dict = [Int: String]()
print("empty\(dict.isEmpty)")
dict[1] = "padma kumar"
var dic2 :[String:String] = ["1": "padu gadu", "2" : "kumargadu"]
dict[3] = "pk"
let height  = 23
let widtyh = 9309
let area = (height * widtyh)
let myarea2 = (height: 279, widtyh: 279)
print(myarea2)
var pk : String?
pk = "something"
if pk == nil{
    print(pk)
}else{
    print("something")
    
}
func somesum (num1: Int, num2: Int){
    print("Sum: \(num1 + num2)")
    func something( num3:Int, num4: Int)->Int{
        
      return num2+num1
    }
    
}
var square: (Int) -> (Int) = {
    
    num in
    return num * num
}
print("square:\(square(5))")
let numberws = [1,3,4,5,66,7,8,8,8,]
let sortnumbers = numberws.sorted(by:{x,y in x < y })
func funmaker(val:Int)->(Int)->(Int){
    func addValus(num1:Int)->Int{
        return num1 + val
    }
    
    return addValus
    
    
}
enum emotion{
    case joy
    case happy
    case laugh
    case sad
    case anger
    case feelings
    case mixed
    
}
var myFeelings = emotion.feelings
myFeelings = .sad
print(myFeelings)
protocol Flyable{
    var flies: Bool { get set}
    func fly(distMiles: Double)-> String
}
class Vehicle: Flyable{
    var flies: Bool = false
    var name:String = "something"
    func <#name#>(<#parameters#>) -> <#return type#> {
        <#function body#>
    }
}