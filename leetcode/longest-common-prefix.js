/**
 * @param {string[]} strs
 * @return {string}
 */
var longestCommonPrefix = function(strs) {
  if (strs.length === 0) {
    return '';
  } else if (strs.length === 1) {
    return strs[0];
  } else {
    const len = commomLen(strs);
    return strs[0].slice(0, len);
  }
};

var commomLen = function(strs) {
  const minLen = Math.min(...strs.map(x => x.length));
  for (let i = 0; i < minLen; i += 1) {
    if (strs.some(str => str[i] !== strs[0][i])) {
      return i;
    }
  }

  return minLen;
};
