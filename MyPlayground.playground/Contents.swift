import UIKit

let queue = DispatchQueue(label: "queu")
let group = DispatchGroup()
group.enter()
queue.async {
    for i in 0...10000 {
        print("i: \(i)")
    }
    group.leave()
}

let result = group.wait(timeout: DispatchTime.now() + 2)
print(result)
