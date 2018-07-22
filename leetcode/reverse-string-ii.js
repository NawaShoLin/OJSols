/**
 * @param {string} s
 * @param {number} k
 * @return {string}
 */
var reverseStr = function(s, k) {
  if (s.length < k) {
    return revStr(s);
  } else if (s.length >= k * 2) {
    const head = revStr(s.slice(0, k)) + s.slice(k, k * 2);
    return head + reverseStr(s.slice(k * 2), k);
  } else {
    return revStr(s.slice(0, k)) + s.slice(k);
  }
};

var revStr = function(s) {
  return s.split('').reverse().join('');
};

