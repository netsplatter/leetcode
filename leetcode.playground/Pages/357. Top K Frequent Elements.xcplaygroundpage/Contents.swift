// Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dict = [Int:Int]() // num:count
    var result = [Int]()
    
    for num in nums {
        dict[num, default: 0] += 1
    }
    
    for _ in 1...k {
        let maxValue = dict.max { a, b in a.value < b.value }
        result.append(maxValue!.key)
        dict[maxValue!.key] = 0
    }
    
    return result
}

topKFrequent([1,1,2,2,2], 2)
