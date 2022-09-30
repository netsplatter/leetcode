class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard !needle.isEmpty else { return 0 }
        guard haystack.count >= needle.count else { return -1 }

        let haystackArray = Array(haystack)
        let needleArray = Array(needle)

        for i in 0...haystackArray.count - needleArray.count {
            if Array(haystackArray[i..<i + needleArray.count]) == needleArray {
                return i
            }
        }

        return -1
    }
    
    func strStr2(_ haystack: String, _ needle: String) -> Int {
        if needle == "" { return 0 }
        if needle.count > haystack.count { return -1 }
        
        if let range = haystack.range(of: needle) {
            return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        } else {
            return -1
        }
    }
}
