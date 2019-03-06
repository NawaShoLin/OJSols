// Runtime: 188 ms, faster than 61.20% of JavaScript online submissions for Range Sum of BST.
//   Memory Usage: 67.1 MB, less than 40.00% of JavaScript online submissions for Range Sum of BST.

/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @param {number} L
 * @param {number} R
 * @return {number}
 */
var rangeSumBST = function(root, L, R) {
  if (root === null) {
    return 0;
  }

  const { val, left, right } = root;

  const lSum = val >= L ? rangeSumBST(left, L, R) : 0;
  const rSum = val <= R ? rangeSumBST(right, L, R) : 0;
  const selfVal = val >= L && val <= R ? val : 0;

  return lSum + rSum + selfVal;
};
