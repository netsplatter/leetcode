class Solution {
    func isHappy(_ n: Int) -> Bool {
        var n = n
        var array: [Int] = []
        
        while n > 0 {
            array.append(n % 10)
            n /= 10
        }
        
        for num in array {
            n += num * num
        }

        if n == 1 { return true }
        if n > 4 { return isHappy(n) }
        return false
    }
}

Solution().isHappy(3)
