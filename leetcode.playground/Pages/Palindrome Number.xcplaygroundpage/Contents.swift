let num = 123

// Bruteforce solution
func isPalindrome(_ x: Int) -> Bool {
    if x < 0 { return false }
    let chars = String(x)
    let reversedChars = String(chars.reversed())
    
    if chars != reversedChars {
        return false
    }
    
    return true
}

isPalindrome(num)


// Efficient solution
func isPalindrome2(_ x: Int) -> Bool {
    guard x >= 0 else { return false }
    
    var x = x
    var arr: [Int] = []
    var arrInverted: [Int] = []
    
    while x != 0 {
        let pop = x % 10
        x = x / 10
        
        arr.insert(pop, at: 0)
        arrInverted.insert(pop, at: arrInverted.endIndex)
    }
    
    if arr != arrInverted {
        return false
    }
    
    return true
}

isPalindrome2(num)
