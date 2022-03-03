/*
 Write a function that takes a list of numbers, numbers, and returns the largest number in the list. If there are no numbers in the list, return 0.
*/
func solution1(numbers: [Int]) -> Int {
    var largestNumber = 0
    
    for number in numbers {
        if number > largestNumber {
            largestNumber = number
        }
    }
        
    return largestNumber
}


/*
 Suppose you're given a binary tree represented as an array. For example, [3,6,2,9,-1,10] represents the following binary tree (where -1 is a non-existent node)

 Write a function that determines whether the left or right branch of the tree is larger. The size of each branch is the sum of the node values. The function should return the string "Right" if the right side is larger and "Left" if the left side is larger. If the tree has 0 nodes or if the size of the branches are equal, return the empty string.
 */

func solution2(arr: [Int]) -> String {
    var sumLeft = 0
    var sumRight = 0
    var reversedIndex = false
    
    for (i, num) in arr.enumerated() {
        if i > 0 {
            if num > 0 {
                 if i % 2 == 0 {
                     if reversedIndex {
                         sumLeft += num
                     } else {
                         sumRight += num
                     }
                 } else {
                     if reversedIndex {
                         sumRight += num
                     } else {
                         sumLeft += num
                     }
                 }
            } else {
                reversedIndex.toggle()
            }
        }
    }
    
    if sumLeft == sumRight { return "" }
    if sumLeft > sumRight {
        return "Left"
    } else {
        return "Right"
    }
}

solution2(arr: [1, 10, 5, 1, 0, 6])








// Coding assessment first attempt
//func solution3(_ n: Int) -> Int {
//    if n == 1 || n == 0 {
//        return 1
//    } else if n == 2 {
//        return 2
//    } else {
//        return solution3(n - 3) + solution3(n - 2) + solution3(n - 1)
//    }
//}
//
//solution3(42)

//
//func solution4(n: Int) -> Int {
//    var res: [Int] = [n + 1]
//    res[0] = 1
//    res[1] = 1
//    res[2] = 2
//      
//    for i in 3..n + 1 {
//        res[i] = res[i - 1] + res[i - 2] + res[i - 3]
//    }
//    
//   
//       
//    return res[n]
//}
//
//solution4(n: 3)

// Coding assessment second attemtp

//func solution3(s: String) -> Int {
//    guard !s.isEmpty else { return 0 }
//
//    var arr: [Character] = []
//    var maxLength = 0
//
//    arr.append(s.first!)
//
//    for char in s.dropFirst() {
//        if arr.contains(char) {
//            maxLength = max(arr.count, maxLength)
//            print(maxLength)
//            arr = [char]
//        } else {
//            arr.append(char)
//        }
//    }
//
//    maxLength = max(arr.count, maxLength)
//
//    return maxLength
//}
//
//solution3(s: "nNdNfdfdfdopeoepeoQwerRtYuiOpjHg")
//[nNd]
//[dNf]
//


// Coding assessment third attempt
//Given a string of angle brackets, angles, such as "<<><>><<<>", write a function that adds angle brackets to the beginning and end to make all angle brackets match and return it. The angle brackets "match" if for every < there is a corresponding > appearing after it in the string, and for every > there is a corresponding < appearing before it in the string.
//func solution4(angles: String) -> String {
//    var openingCount = 0
//    var additionalLeadingOpeningCount = 0
//
//    for char in angles {
//        if char == ">" {
//            if openingCount == 0 {
//                additionalLeadingOpeningCount += 1
//            } else {
//                openingCount -= 1
//            }
//        } else {
//            openingCount += 1
//        }
//    }
//
//    return String(repeating: "<", count: additionalLeadingOpeningCount) + angles + String(repeating: ">", count: openingCount)
//}
//
//solution4(angles: "><<><")





func solution5(tanks: [[Int]], guesses: [[Int]]) -> [String] {
    var result: [String] = []
    var hitFlag = false
    var missFlag = false
    var nhFlag = false

    for position in guesses {
        for tankPosition in tanks {
            if tankPosition == position {
                result.append("h")
                hitFlag = true
                //continue
            } else {
                if !missFlag {
                    result.append("m")
                    missFlag = true
                }
            }
            if [position[0] - 1, position[1]] == tankPosition ||
                        [position[0] + 1, position[1]] == tankPosition ||
                        [position[0], position[1] - 1] == tankPosition ||
                        [position[0], position[1] + 1] == tankPosition {
                result.append("nh")
                nhFlag = true
            }
        }
    }

    return result
}

solution5(tanks: [[0, 3], [1, 2], [4, 1]], guesses: [[4, 0], [9, 1], [1, 2]])

//
//func solution6(values: [Double], n: Int) -> Double {
//    //var result: [Double] = []
//
//
//    let result = Array(Set(values)).sorted(by: <)
//
//    if n > result.count - 1 { return -1 }
//    return result[n - 1]
//}
//
//solution6(values: [-50, -80, 0, 5, -22], n: 2)

let array: [Int] = [1, 2, 0, 3, 1, 5]
let sortedArray = array.sorted(by: <)
