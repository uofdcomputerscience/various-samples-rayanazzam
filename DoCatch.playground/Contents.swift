import UIKit

struct Entity: Codable {
    let name: String
    let value: Int
    let secondName: String?
}

//let entity = Entity(name: "CashInCup", value: 30, secondName: "home")
//
//let data = try! JSONEncoder().encode(entity)
//
//print(data)
//UserDefaults.standard.set(data, forKey: "cup")

let keys = ["cash", "cup"]
for key in keys {
    let d2 = UserDefaults.standard.data(forKey: key)!
    let e2 = try! JSONDecoder().decode(Entity.self, from: d2)
    print(e2)
}
 
