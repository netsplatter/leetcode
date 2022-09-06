// Given an array, find the average of all contiguous subarrays of size ‘K’ in it.
// TC: O(n)
//func subarrays(_ arr: [Double], _ k: Int) -> [Double] {
//    var result = [Double]()
//
//    for i in 0...arr.count - k {
//        var sum: Double = 0
//
//        for j in i..<(i + k) {
//            sum += arr[j]
//        }
//
//        sum = sum / Double(k)
//        result.append(sum)
//    }
//
//    return result
//}
//
//subarrays([1, 3, 2, 6, -1, 4, 1, 8, 2], 5)


func subarrays(_ arr: [Double], _ k: Int) -> [Double] {
    var result = [Double]()
    
    var arrA = arr[0...arr.count - k]
    print(arrA)
    
    for i in 0...arrA.count {
        var sum: Double = 0
        var arrB = arrA[i...(i + k)]

        for j in 0...arrB.count {
            sum += arrB[j]
        }

        sum = sum / Double(k)
        result.append(sum)
    }
    
    return result
}

//subarrays([1, 3, 2, 6, -1, 4, 1, 8, 2], 5)

