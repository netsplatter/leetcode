//You are given an m x n integer grid accounts where accounts[i][j] is the amount of money the i​​​​​​​​​​​th​​​​ customer has in the j​​​​​​​​​​​th​​​​ bank. Return the wealth that the richest customer has.

//A customer's wealth is the amount of money they have in all their bank accounts. The richest customer is the customer that has the maximum wealth.

// O(nm)
func maximumWealth(_ accounts: [[Int]]) -> Int {
    var maxWealth = Int()
    
    for account in accounts {
        var accountWealth = Int()
        
        for asset in account {
            accountWealth += asset
        }
        
        if maxWealth < accountWealth {
            maxWealth = accountWealth
        }
    }
    
    return maxWealth
}

maximumWealth([[1,2,3],[3,2,1]])
