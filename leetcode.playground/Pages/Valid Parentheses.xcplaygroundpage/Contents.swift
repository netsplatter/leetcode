let dict: [Character: Character] = [")": "(", "}": "{", "]": "["]

func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    
    for char in s {
        if char == "(" || char == "{" || char == "[" {
            stack.append(char)
        } else {
            guard stack.last == dict[char]! else { return false }
            stack.removeLast()
        }
    }
    
    return stack.count == 0
}

isValid("()")
