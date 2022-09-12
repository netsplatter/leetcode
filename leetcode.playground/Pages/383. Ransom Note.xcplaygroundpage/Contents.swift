// TC O(m) where m is the biggest collection.
// SC: O(k) where k is the number of distinct characters in magazine, and therefore the size of our hash map.
func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var pool = [Character:Int]()
    
    for char in magazine {
        pool[char, default: 0] += 1
    }
        
    for char in ransomNote {
        guard pool[char] != nil, pool[char]! != 0 else { return false }
        pool[char]! -= 1
    }
    
    return true
}

canConstruct("aa", "ab")
