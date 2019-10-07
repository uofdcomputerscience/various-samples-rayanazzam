import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let array = [1,2,3]

DispatchQueue.global().async {
    for each in 1...1000 {
        print("+\(each)+")
    }
}

DispatchQueue.global().async {
    for each in 1...1000 {
        print("-\(each)-")
    }
}

print("go!")
print("stop!")
