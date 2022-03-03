//func strStr(_ haystack: String, _ needle: String) -> Int {
//    guard !needle.isEmpty else { return 0 }
//    guard haystack.count >= needle.count else { return -1 }
//
//    let shiftsCount = haystack.count - needle.count + 1
//    for shift in 0..<shiftsCount {
//        var isSubstring = true
//        for offset in 0..<needle.count {
//            let haystackCharacter = haystack[String.Index(utf16Offset: shift + offset, in: haystack)]
//            let needleCharacter = needle[String.Index(utf16Offset: offset, in: needle)]
//
//            guard haystackCharacter == needleCharacter else {
//                isSubstring = false
//                break
//            }
//        }
//
//        if isSubstring { return shift }
//    }
//
//    return -1
//}

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


strStr("hello", "ll")
