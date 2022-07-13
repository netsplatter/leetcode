// first attempt
func lengthOfLastWord(_ s: String) -> Int {
    guard s.count > 1 else { return 1 }
    var firstCharIndex: Int?

    for (i, char) in s.reversed().enumerated() {
        if char != " " {
            if firstCharIndex == nil {
                firstCharIndex = i
            }
        }

        if firstCharIndex != nil {
            if char == " " {
                return i - firstCharIndex!
            }

            if i == s.count - 1 {
                return i - firstCharIndex! + 1
            }
        }
    }

    return firstCharIndex != nil ? firstCharIndex! : s.count
}

func lengthOfLastWord2(_ s: String) -> Int {
    let parts = s.split(separator: " ")
    return parts.last?.count ?? 0
}

func lengthOfLastWord3(_ s: String) -> Int {
    var res = 0
    for c in s.reversed() {
        if c == " " {
            if res > 0 {
                return res
            }
        } else {
            res += 1
        }
    }
    return res
}

lengthOfLastWord("   fly me   to   the moon  ")
lengthOfLastWord("a ")
lengthOfLastWord("day")
