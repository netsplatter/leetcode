func isPalindrome(_ s: String) -> Bool {
    guard !s.isEmpty else { return true }
    
    var cleanString = ""
    for char in s {
        if char.isLetter || char.isNumber {
            cleanString.append(char.lowercased())
        }
    }
    
    let palindrome = String(cleanString.reversed())
    
    if cleanString == palindrome {
        return true
    }
    
    return false
}
