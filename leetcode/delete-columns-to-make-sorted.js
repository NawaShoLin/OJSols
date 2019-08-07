// Runtime: 72 ms, faster than 71.75% of JavaScript online submissions for Delete Columns to Make Sorted.
// Memory Usage: 39.4 MB, less than 100.00% of JavaScript online submissions for Delete Columns to Make Sorted.

/**
 * @param {string[]} strs
 * @param {number} index
 * @return {boolean}
 */
const ordered = (strs, index) => {
  for (let i = 1; i < strs.length; i += 1) {
    if (strs[i][index] < strs[i-1][index]) {
      return false;
    }
  }

  return true;
};

/**
 * @param {string[]} A
 * @return {number}
 */
var minDeletionSize = function(A) {
  if (A.length <= 1) {
    return 0;
  }

  let count = 0;
  const { length } = A[0];
  for (let i = 0; i < length; i += 1) {
    if (!ordered(A, i)) {
      count += 1;
    }
  }

  return count;
};
