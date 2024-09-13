import UIKit

let blackSquare = "⬛️"
let yellowSquare = "🟨"
let twoYellow = "🟨🟨"
let twoBlack = "⬛️⬛️"

func createHat() {
    for i in 1...6{
        for i in 1...4{
            print(" ", terminator: "")
        }
        for i in 1...7 {
            print(blackSquare, terminator: "")
        }
        print(terminator: "\n")
    }
    for i in 1...11{
        print(blackSquare,terminator: "")
    }
    print(terminator: "\n")
}

func createFace() {
    for i in 1...3{
        print(" ", terminator: "")
    }
    
    for i in 1...8{
        print(yellowSquare, terminator: "")
    }
    
    print(terminator: "\n")
    
    createEyes()
    
    for i in 1...2{
        for i in 1...11{
            print(yellowSquare, terminator: "")
        }
        print(terminator: "\n")
    }
    
    createMouth()
    
    for i in 1...3{
        print(" ", terminator: "")
    }
    for i in 1...8{
        print(yellowSquare, terminator: "")
    }
    
    print(terminator: "\n")
    
    for i in 1...6{
        
        print(" ", terminator: "")
    }
    
    for i in 1...5{
        print(yellowSquare, terminator: "")
    }
    print(terminator: "\n")
}

func createMouth() {
    for i in 1...1{
        print(" ", terminator: "")
    }
    print(twoYellow, terminator: "")
    for i in 1...6{
        print(blackSquare, terminator: "")
    }
    print(twoYellow)
}

func createEyes(){
    for i in 1...1{
        print(" ", terminator: "")
    }
    print(twoYellow + twoBlack + twoYellow + twoBlack + twoYellow)
}

createHat()
createFace()

//for some reason i feel like there is a more efficient way to code all of this...i used too many for loops, making the code tedious to follow through. i also feel as if there was definitely a way to code createEyes() better. i don't think i needed the constants twoYellow or twoBlack. yet i did not know how to code it otherwise.
