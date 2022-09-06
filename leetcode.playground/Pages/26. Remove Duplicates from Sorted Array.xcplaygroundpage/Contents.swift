func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    var array: [Int] = []
    
    for i in 1..<nums.count {
        if nums[i] != nums[i - 1] {
            array.append(nums[i - 1])
        }
    }
    
    array.append(nums.last!)
    
    nums = array
    return array.count
}

var array: [Int] = [-1,0,0,0,0,3,3]

removeDuplicates(&array)
print(array)
