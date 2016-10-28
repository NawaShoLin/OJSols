class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0;
        }
        if nums.count == 1 {
            return nums[0]
        }
        
        func robLine(nums: [Int]) -> Int {
            var best = [Int](repeating:0, count: nums.count)
            best[0] = nums[0]
            best[1] = max(nums[0], nums[1])
            for i in 2 ..< nums.count {
                best[i] = max(best[i-1], nums[i] + best[i-2])
            }
            return best[best.count - 1]
        }

        var n1 = nums
        var n2 = nums
        n1[0] = 0
        n2[n2.count - 1] = 0
        
        return max(robLine(nums: n2), robLine(nums: n1))
    }
}
