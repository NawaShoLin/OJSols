// Runtime: 148 ms, faster than 75.00% of Swift online submissions for Count Negative Numbers in a Sorted Matrix.
// Memory Usage: 21.5 MB, less than 100.00% of Swift online submissions for Count Negative Numbers in a Sorted Matrix.
func negCount(_ row: [Int]) -> Int {
     let neg = row.enumerated().first(where: { index, x in x < 0 })
     if let (i, _) = neg {
         return row.count - i
     } else {
        return 0
     }
}

class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        return grid.reduce(into: 0, { sum, row in sum += negCount(row)})
    }
}
