// Runtime: 16 ms, faster than 74.39% of Swift online submissions for Kids With the Greatest Number of Candies.
// Memory Usage: 20.6 MB, less than 100.00% of Swift online submissions for Kids With the Greatest Number of Candies.

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let maxCount = (candies.max() ?? 0)
        let requiredCount = maxCount - extraCandies

        return candies.map({ $0 >= requiredCount })
    }
}
