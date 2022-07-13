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
    func recursion(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
        print("left: \(left)")
        print("right: \(right)")
    
        if left >= right {
            return right
        } else {
            let midIndex: Int = left + (right - left) / 2
            print("midIndex: \(midIndex)")
            print("midNumber: \(nums[midIndex])")
            print()
            if target < nums[midIndex] {
                return recursion(nums, target, left, midIndex)
            } else if target > nums[midIndex] {
                return recursion(nums, target, midIndex + 1, right)
            } else {
                return midIndex
            }
        }
    }
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        return recursion(nums, target, 0, nums.count)
    }
}

let nums: [Int] = [1, 3, 5, 7]
Solution3().searchInsert(nums, 2)
