class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 0 {
            return 0
        }
    
        var minDiff = 0
        var min = prices[0]
        for p in prices {
            let diff = p - min
            if diff > minDiff {
                minDiff = diff
            } else if p < min {
                min = p
            }
        }
        
        return minDiff
    }
}
