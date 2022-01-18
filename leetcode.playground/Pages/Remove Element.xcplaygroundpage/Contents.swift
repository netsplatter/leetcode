var nums = [0,1,2,2,3,0,4,2]

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    while nums.contains(val) {
        if let itemToRemoveIndex = nums.firstIndex(of: val) {
            nums.remove(at: itemToRemoveIndex)
        }
    }
    
    return nums.count
}

removeElement(&nums, 2)
print(nums)
