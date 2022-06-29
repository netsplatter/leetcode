// O(n) - because there's only 1 loop of n elements
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if target > nums.last! {
            return nums.endIndex
        }
        
        for (i, num) in nums.enumerated() {
            if target == num {
                return i
            }
            
            if target < num {
                if i == 0 {
                    return 0
                }
                
                return i
            }
        }
        
        return -1
    }
}

//Solution().searchInsert([1,3,5,6], 0)

class Solution2 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        let midIndex: Int = nums.count / 2
        
        if target == nums[midIndex] {
            return midIndex
        }
        
        if target < nums[midIndex] {
            let leftNums = Array(nums[0..<midIndex])
            return searchInsert(leftNums, target)
        } else {
            let rightNums = Array(nums[midIndex..<nums.endIndex])
            return searchInsert(rightNums, target)
        }
    }
}

//Solution2().searchInsert([1,3,5,6,7], 6)

class Solution3 {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard nums.startIndex < nums.endIndex else { return -1 }
        
        let midIndex: Int = nums.count / 2
        
        if nums.count == 1 {
            return 1
        }
        
        if target < nums[midIndex] {
            return searchInsert(Array(nums[0..<midIndex]), target)
        } else if target > nums[midIndex] {
            return searchInsert(Array(nums[midIndex..<nums.endIndex]), target)
        } else {
            return midIndex
        }
    }
}

Solution3().searchInsert([1,3,5,7], 7)
