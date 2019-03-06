// Runtime: 348 ms, faster than 90.48% of Kotlin online submissions for Range Sum of BST.
// Memory Usage: 47.2 MB, less than 25.00% of Kotlin online submissions for Range Sum of BST.

/**
* Example:
* var ti = TreeNode(5)
* var v = ti.`val`
* Definition for a binary tree node.
* class TreeNode(var `val`: Int) {
*     var left: TreeNode? = null
*     var right: TreeNode? = null
* }
*/
class Solution {
  fun rangeSumBST(root: TreeNode?, L: Int, R: Int): Int {
    if (root == null) {
      return 0;
    }

    val v = root.`val`;

    if (v > R) {
      return rangeSumBST(root.left, L, R);
    } else if (v < L) {
      return rangeSumBST(root.right, L, R);
    } else {
      return rangeSumBST(root.left, L, R) + rangeSumBST(root.right, L, R) + v;
    }
  }
}
