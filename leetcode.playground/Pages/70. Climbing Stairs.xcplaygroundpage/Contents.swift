var cache = [Int: Int]()
func climbStairs(_ n: Int) -> Int {
    if cache[n] != nil {
        return cache[n]!
    }
    if n <= 1 {
        return 1
    } else {
        cache[n] = climbStairs(n-1) + climbStairs(n-2)
        return cache[n]!
    }
}

climbStairs(45)
