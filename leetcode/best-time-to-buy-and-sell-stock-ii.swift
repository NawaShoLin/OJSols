class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
    
        if prices.count <= 1 {
            return 0
        }
        
        var okane = 0
        for i in 1 ..< prices.count {
            let today = prices[i]
            let yesterday = prices[i-1]
            if (today > yesterday) {
                okane += today - yesterday
            }
        }
        
        return okane
    }
}
