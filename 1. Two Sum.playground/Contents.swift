import UIKit
let start = CFAbsoluteTimeGetCurrent()


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for (i, num) in nums.enumerated() {
        if let index = dict[target-num] {
            if i != index {
                return [index, i]
            }
        }
        dict[num] = i
    }
    
    return[0]
}

twoSum([3,2,3], 6)


let diff = CFAbsoluteTimeGetCurrent() - start
print("Took \(diff) seconds")
