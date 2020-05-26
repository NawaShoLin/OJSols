// Runtime: 16 ms, faster than 80.39% of Swift online submissions for Vertical Order Traversal of a Binary Tree.
// Memory Usage: 23 MB, less than 100.00% of Swift online submissions for Vertical Order Traversal of a Binary Tree.

func comp(a: (val: Int, y: Int), b: (val: Int, y: Int)) -> Bool {
    if a.y != b.y {
        return a.y < b.y
    } else {
        return a.val < b.val
    }
}

class Solution {
    var valuesDict: [Int: [(val: Int, y: Int)]] = [:]

    func dfs(node: TreeNode?, x: Int, y: Int) -> Void {
        if let current = node {
            if let values = valuesDict[x] {
                valuesDict[x] = values + [(current.val, y)]
            } else {
                valuesDict[x] = [(current.val, y)]
            }
            dfs(node: current.left, x: x - 1, y: y + 1)
            dfs(node: current.right, x: x + 1, y: y + 1)
        }
    }

    func verticalTraversal(_ root: TreeNode?) -> [[Int]] {
        dfs(node: root, x: 0, y: 0)
        let keys = valuesDict.keys.sorted()

        return keys.map({ key in
            if let values = valuesDict[key] {
                return values.sorted(by: comp).map({ $0.val })
            } else {
                return []
            }
        })
    }
}
