//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
import UIKit
class StringCollection{
    func add(_text:String){
    
    }
    func go(){
    
    }
}

let myCatterpillar =  StringCollection()
myCatterpillar.add(_text: "h")
myCatterpillar.add(_text: "e")
myCatterpillar.add(_text: "l")
myCatterpillar.add(_text: "l")
myCatterpillar.add(_text: "o")
myCatterpillar.add(_text: "o")


myCatterpillar.go()

let array1 = ["dog","cat","rat","mat","bat","pot","gun"]
let array2 = ["dog1","cat2","rat3","mat4","bat5","pot6","gun7"]
func findAnima(animalToFind:String)-> Bool {
    
    for animal in array1{
        if animal == animalToFind{
            return true
        }
    }
    for animal in array2{
        if animal.lowercased() == animalToFind.lowercased(){
            return true
        }
    }
    return false
}
findAnima(animalToFind: "Dog")