func singleNumber(_ nums: [Int]) -> Int {
    var dict = Set<Int>()
    
    for num in nums {
        if dict.contains(num) {
            dict.remove(num)
        } else {
            dict.insert(num)
        }
    }
    
    return dict.first!
}

singleNumber([2,2,1])
