class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        //rotateWithRemove(&nums, k)
        //rotateWithSlice(&nums, k)
        //bruteforce(&nums, k)
        rotateWithPermutation(&nums, k)
    }
    
    func rotateWithRemove(_ nums: inout [Int], _ k: Int) {
        let rotateCount = k % nums.count
        let lastElementIndex = nums.count - 1
        for index in 0..<rotateCount {
            let lastValue = nums[lastElementIndex]
            nums.removeLast()
            nums.insert(lastValue, at: 0)
        }
    }
    
    func rotateWithSlice(_ nums: inout [Int], _ k: Int) {
        let rotateCount = k % nums.count
        let count = nums.count
        nums = Array(nums[count-rotateCount..<count]) + Array(nums[0..<count-rotateCount])
    }
    
    func bruteforce(_ nums: inout [Int], _ k: Int) {
        let rotateCount = k % nums.count
        let lastElementIndex = nums.count - 1
        for index in 0..<rotateCount {
            shiftArray(&nums)
        }
    }
    
    func shiftArray(_ nums: inout [Int]) {
        let lastElementIndex = nums.count - 1
        for index in 0..<lastElementIndex {
            let revertIndex = lastElementIndex - index
            let rightValue = nums[revertIndex]
            nums[revertIndex] = nums[revertIndex - 1]
            nums[revertIndex - 1] = rightValue
        }
    }
    
    func rotateWithPermutation(_ nums: inout [Int], _ k: Int) {
        if nums.count <= 1 {
            return
        }
        let numberOfRotation = k % nums.count
        let arrayLenght = nums.count
        
        var startIndex = 0
        var rotateCount = 0
                
        while rotateCount < arrayLenght {
            var currentIndex = startIndex
            var currentValue = nums[startIndex]
            while true {
                let nextIndex = (currentIndex + numberOfRotation) % arrayLenght
                //print("switch \(currentValue) with \(nums[nextIndex])")
                let nextValue = nums[nextIndex]
                nums[nextIndex] = currentValue
                currentValue = nextValue
                currentIndex = nextIndex
                rotateCount += 1
                
                if startIndex == currentIndex {
                    break
                }
            }
            startIndex += 1
        }
                  
    }
    
}


var array = [1,2,3,4,5,6,7]
Solution().rotate(&array, 3)
print(array)
