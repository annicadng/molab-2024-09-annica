//: [Previous](@previous)

import Foundation

let path = Bundle.main.path(forResource: "aphrodite.txt", ofType: nil)
let str = try String(contentsOfFile: path!, encoding: .utf8)
print(str)

func load(_ file :String) -> String {
    let path = Bundle.main.path(forResource: file, ofType: nil)
    let str = try? String(contentsOfFile: path!, encoding: .utf8)
    return str!
}

print(load("annica.txt"))

print(load("monalisa.txt"))

print(load("pharaoh.txt"))
//: [Next](@next)
