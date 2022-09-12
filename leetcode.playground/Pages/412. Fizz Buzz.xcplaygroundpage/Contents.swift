// TC: O(n)
// SC: O(1)
func fizzBuzz(_ n: Int) -> [String] {
    var answer: [String] = []
    
    for num in 1...n {
        if num % 3 == 0 && num % 5 == 0 {
            answer.append("FizzBuzz")
        } else if num % 3 == 0 {
            answer.append("Fizz")
        } else if num % 5 == 0 {
            answer.append("Buzz")
        } else {
            answer.append("\(num)")
        }
    }
    
    return answer
}

func fizzBuzz2(_ n: Int) -> [String] {
    var answer: [String] = []
    
    for num in 1...n {
        let divisibleBy3 = num % 3 == 0
        let divisibleBy5 = num % 5 == 0
        
        var string = String()
        
        if divisibleBy3 {
            string += "Fizz"
        }
        
        if divisibleBy5 {
            string += "Buzz"
        }
        
        if string.isEmpty {
            string += String(num)
        }
        
        answer.append(string)
    }
    
    return answer
}

fizzBuzz2(4)
fizzBuzz2(15)
