func eliminateSubstring(_ str: String) -> String {
    let strArray = Array(str)
    var tempChars: String = ""

    for (i, char) in strArray.enumerated() {
        if char == "S" && i >= 2 {
            if strArray[i - 1] == "W" && strArray[i - 2] == "A" {
                tempChars.removeLast(2)
                continue
            }
        }
        
        tempChars.append(char)
    }
    
    return tempChars.isEmpty ? "-1" : tempChars
}

eliminateSubstring("AWAWSSG")
eliminateSubstring("AWSGG")
eliminateSubstring("AWS")
eliminateSubstring("SAWSHGAWAAWSWS")
