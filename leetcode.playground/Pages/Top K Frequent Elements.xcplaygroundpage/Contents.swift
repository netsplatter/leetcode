// Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dict: [Int:Int] = [:]
    var results: [Int] = []
    
    for num in nums {
        dict[num, default: 0] += 1
    }
    
    for numbers in 1...k {
        let max = dict.max { a, b in a.value < b.value }
        results.append(max!.key)
        dict[max!.key] = 0
    }
    
    return results
}

topKFrequent([1,1,2,2,2], 2)
