func romanToInt(_ s: String) -> Int {
    let string = s.map { String($0) }
    var previousValue = ""
    var integer = 0
    
    for c in string {
        switch c {
        case "I":
            integer += 1
            previousValue = "I"
            
        case "V":
            if previousValue == "I" {
                integer += 3
                previousValue = ""
            } else {
                integer += 5
            }
            
        case "X":
            if previousValue == "I" {
                integer += 8
            } else {
                integer += 10
            }
            
            previousValue = "X"
            
        case "L":
            if previousValue == "X" {
                integer += 30
                previousValue = ""
            } else {
                integer += 50
            }
            
        case "C":
            if previousValue == "X" {
                integer += 80
            } else {
                integer += 100
            }
            
            previousValue = "C"
            
        case "D":
            if previousValue == "C" {
                integer += 300
                previousValue = ""
            } else {
                integer += 500
            }
            
        case "M":
            if previousValue == "C" {
                integer += 800
                previousValue = ""
            } else {
                integer += 1000
            }
            
        default: continue
        }
    }
    
    return integer
}

romanToInt("LVIII")
