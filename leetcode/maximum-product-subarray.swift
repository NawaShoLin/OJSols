class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 1
        }
    
        var max_til = [Int](repeating: 0, count: nums.count)
        var min_til = [Int](repeating: 0, count: nums.count)
        (max_til[0], min_til[0]) = (nums[0], nums[0])
        
        for i in 1..<nums.count {
            let max_product = nums[i] * max_til[i-1]
            let min_product = nums[i] * min_til[i-1]
            max_til[i] = max(nums[i], max(min_product, max_product))
            min_til[i] = min(nums[i], min(min_product, max_product))
        }
        
        var max_one = max_til[0]
        for m in max_til {
            max_one = max(m, max_one)
        }
        
        return max_one
    }
}
