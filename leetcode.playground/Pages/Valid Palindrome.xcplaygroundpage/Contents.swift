// it's necessary to ask can the input string be empty or consist of 1 character
func isPalindrome(_ s: String) -> Bool {
    guard !s.isEmpty || s.count == 1 else { return true } // if the string can be empty or has 1 character, then we use this guard statement
    
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
