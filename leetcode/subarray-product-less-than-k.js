// Runtime: 1448 ms, faster than 8.40% of JavaScript online submissions for Subarray Product Less Than K.
// Memory Usage: 81 MB, less than 33.33% of JavaScript online submissions for Subarray Product Less Than K.

/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var numSubarrayProductLessThanK = function(nums, k) {
  let count = 0;
  let dict = {};
  for (let i = 0; i < nums.length; i += 1) {
    const num = nums[i];
    if (num >= k) {
      dict = {};
      continue;
    }

    const newDict = {};
    Object.keys(dict).map(Number)
    .filter(x => x * num < k)
    .forEach(x => {
      newDict[x * num] = dict[x];
    })

    newDict[num] = newDict[num] ? newDict[num] + 1 : 1;
    dict = newDict;

    count = Object.keys(dict).map(k => dict[k]).reduce((pre, current) => pre + current, count);
  }

  return count;
};

console.log(numSubarrayProductLessThanK([10, 5, 2, 6], 100));
