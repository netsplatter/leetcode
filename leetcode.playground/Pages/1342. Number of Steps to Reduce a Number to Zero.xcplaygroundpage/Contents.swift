// O(log n)
// The space complexity is constant, as we do not create a data structure proportional in size to the value of our input.
func numberOfSteps(_ num: Int) -> Int {
    var num = num
    var steps = Int()
    
    while num > 0 {
        if num % 2 == 0 {
            num /= 2
        } else {
            num -= 1
        }
        
        steps += 1
    }
    
    return steps
}

numberOfSteps(8)
