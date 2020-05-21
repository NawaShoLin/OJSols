// Runtime: 348 ms, faster than 33.33% of Swift online submissions for Set Mismatch.
// Memory Usage: 20.7 MB, less than 100.00% of Swift online submissions for Set Mismatch.

class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var dict = [Int](repeating: 0, count: nums.count + 1)

        for n in nums {
            dict[n] += 1
        }

        var result: [Int] = []

        for (i, n) in dict.enumerated() {
            if (n > 1) {
                result.append(i)
            }
        }

        for (i, n) in dict.enumerated() {
            if (n == 0 && i != 0) {
                result.append(i)
            }
        }

        return result
    }
}
