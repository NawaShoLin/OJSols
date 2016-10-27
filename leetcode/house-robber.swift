class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0;
        }
        if nums.count == 1 {
            return nums[0]
        }
        
        var best = [Int](repeating:0, count: nums.count)
        best[0] = nums[0]
        best[1] = max(nums[0], nums[1])
        for i in 2 ..< nums.count {
            best[i] = max(best[i-1], nums[i] + best[i-2])
        }
        return best[best.count - 1]
        
    }
}