/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
 

class Solution {
    var sum: Int
    
    public init() {
        self.sum = 0
    }
    
    func sumNumbers(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        } else {
            sumTree(root, 0)
            return self.sum
        }
    }
    
    func sumTree(_ root: TreeNode?, _ num: Int) {
        let node = root!
        if node.left == nil && node.right == nil {
            self.sum += num * 10 + node.val
        } else {
            if node.left != nil {
                sumTree(node.left, num * 10 + node.val)
            }
            if node.right != nil {
                sumTree(node.right, num * 10 + node.val)
            }
        }
    }
}
