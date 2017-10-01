//: Playground - noun: a place where people can play

import UIKit

var lotterywiining: Int?
lotterywiining = 10
if lotterywiining != nil{
print(lotterywiining!)
}
//lotterywiining = 100

if let winning = lotterywiining{
    print(winning)
    
}
class car{
    var model:String?
    
}
var vehicle  : car?

//if let v = vehicle{
//    if let m = v.model{
//        print(m)
//    }
//}
print(vehicle?.model)


vehicle = car ()
vehicle?.model = "bruce"

if let v = vehicle, m = v.model {
    print(m)
    
}
var cars: [car]?
cars = [cars]()
