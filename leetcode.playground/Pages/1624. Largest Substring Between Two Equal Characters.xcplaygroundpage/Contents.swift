func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
    var dict = [Character:[Int]]()
    var range = -1

    for (i, char) in s.enumerated() {
        dict[char, default: []] += [i]
    }

    for (_, value) in dict {
        if value.count > 1 {
            let newRange = (value.last! - value[0]) - 1
            if newRange > range { range = newRange }
        }
    }

    return range
}
