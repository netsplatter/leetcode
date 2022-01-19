func longestCommonPrefix(_ strs: [String]) -> String {
    let firstElement = strs[0]
    var prefix = ""

    if strs.count > 1, firstElement.count > 0  {
        var array = strs
        array.removeFirst()

        for i in 0...firstElement.count - 1 {
            for item in array {
                if item.prefix(i + 1) != firstElement.prefix(i + 1) {
                    prefix = "" + item.prefix(i)
                    return prefix
                }
                
                if i == firstElement.count - 1, item == array.last {
                    prefix = "" + item.prefix(i + 1)
                }
            }
        }
    }

    if strs.count == 1 { prefix = firstElement }

    return prefix
}

longestCommonPrefix(["flower","flow","flight"])
