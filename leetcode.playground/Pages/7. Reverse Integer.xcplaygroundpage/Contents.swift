//Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

//Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

func reverse(_ x: Int) -> Int {
    var number = x
    var reversedNumber = Int()
    
    while number != 0 {
        let remainder = number % 10
        number = number / 10
        reversedNumber = reversedNumber * 10 + remainder
    }
    
    if reversedNumber > Int32.max || reversedNumber < Int32.min {
        return 0
    }
    
    return reversedNumber
}

reverse(1460)
