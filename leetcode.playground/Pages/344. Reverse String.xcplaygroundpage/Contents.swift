class Solution {
    // 1
    func reverseString(_ s: inout [Character]) {
        s = s.reversed()
    }
    
    // 2
    func reverseString2(_ s: inout [Character]) {
        var first = 0
        var last = s.count - 1
        
        while first < last {
            (s[first], s[last]) = (s[last], s[first])
            first += 1
            last -= 1
        }
    }
}

var s = [Character("h"), Character("e"), Character("l"), Character("l"), Character("o")]
Solution().reverseString2(&s)
print(s)
