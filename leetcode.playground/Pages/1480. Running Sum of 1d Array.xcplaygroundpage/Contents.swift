// Given an array nums. We define a running sum of an array as
// runningSum[i] = sum(nums[0]…nums[i]).

// O(n)
func runningSum1(_ nums: [Int]) -> [Int] {
    var sum = [Int]()
    
    for num in nums {
        sum.append(num + (sum.last ?? 0))
    }
    
    return sum
}
runningSum1([1,2,3,4])

// O(n)
func runningSum2(_ nums: inout [Int]) -> [Int] {
    for i in nums.indices.dropFirst() {
        nums[i] += nums[i - 1]
    }
    
    return nums
}

var myNum = [1,2,3,4]
runningSum2(&myNum)
