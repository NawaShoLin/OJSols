// Runtime: 72 ms, faster than 91.39% of JavaScript online submissions for Trim a Binary Search Tree.
// Memory Usage: 39 MB, less than 91.67% of JavaScript online submissions for Trim a Binary Search Tree.

/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */

const trim = (node, L, R) => {
  if (node === null) {
    return null;
  }

  if (node.val <= R && node.val >= L) {
    node.left = trim(node.left, L, R);
    node.right = trim(node.right, L, R);
    return node;
  } else if (node.val > R) {
    return trim(node.left, L, R);
  } else {
    return trim(node.right, L, R);
  }
}

/**
 * @param {TreeNode} root
 * @param {number} L
 * @param {number} R
 * @return {TreeNode}
 */
var trimBST = function(root, L, R) {
  return trim(root, L, R);
};

