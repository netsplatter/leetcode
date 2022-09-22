//   - time: O(n), where n is the length of nums.
//   - space: O(1), only constant space is used.
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 2 else { return nums.count }
        var j = 1
        var count = 1
        
        for i in 1..<nums.count {
            if nums[i] == nums[i - 1] {
                count += 1
            } else {
                count = 1
            }
            
            if count <= 2 {
                nums[j] = nums[i]
                j += 1
            }
        }
        
        return j
    }
}

var nums = [0,0,1,1,1,1,2,3,3]
Solution().removeDuplicates(&nums)
