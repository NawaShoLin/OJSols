// Runtime: 8 ms, faster than 75.48% of Swift online submissions for Split a String in Balanced Strings.
// Memory Usage: 20.7 MB, less than 100.00% of Swift online submissions for Split a String in Balanced Strings.
class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var (r, l) = (0, 0)
        var count = 0
        for c in s {
            if c == "R" {
                r += 1
            } else if c == "L" {
                l += 1
            }

            if r == l {
                count += 1
            }
        }

        return count
    }
}
