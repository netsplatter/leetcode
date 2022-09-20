// TC: o(n)
func addBinary(_ a: String, _ b: String) -> String {
    var aArray = Array(a)
    var bArray = Array(b)
    
    var i = aArray.count - 1
    var j = bArray.count - 1
    var sum = 0
    var res = ""
    
    while i >= 0 || j >= 0 {
        sum += (i >= 0) ? Int(String(aArray[i]))! : 0
        sum += (j >= 0) ? Int(String(bArray[j]))! : 0
        res = String((sum % 2)) + res
        sum /= 2
        i -= 1
        j -= 1
    }
    
    if sum == 1 {
        res = "1" + res
    }
    
    return res
}

addBinary("11", "1")
