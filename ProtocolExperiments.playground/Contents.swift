import UIKit

protocol SquareDrawing {
    func draw(length: Int)
    func area(length: Int) -> Int
//
    func inspect()
}
extension SquareDrawing {
    func area(length: Int) -> Int {
        return length * length
    }
}

struct ScreenDrawer: SquareDrawing {
    // do some cool screen drawing things
    func draw(length: Int) {
        print("imagine cool screen effects")
        let a = area(length: length)
    }
}

class ConsoleDrawer: SquareDrawing {
    func draw(length: Int) {
        print("drawing a square of length \(length)")
        let area = length * length
    }
}

let allDrawers: [SquareDrawing] = [ScreenDrawer(), ConsoleDrawer()]

for drawer in allDrawers {
    drawer.draw(length: 5)
}

