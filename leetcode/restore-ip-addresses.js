// Runtime: 64 ms, faster than 50.54% of JavaScript online submissions for Restore IP Addresses.
// Memory Usage: 36.4 MB, less than 9.52% of JavaScript online submissions for Restore IP Addresses.

const vaild = ip => ip === '0' || (ip[0] !== '0' && parseInt(ip, 10) < 256);

/**
 * @param {string[]} current
 * @param {string} rest
 * @param {Set} set
 */
var findAllIp = function(current, rest, set) {
  if (current.length === 4) {
    if (rest === '') {
      const ip = current.join('.');
      set.add(ip);
    };
    return;
  }

  if (rest.length === 0 || rest.length > (4 - current.length) * 3) {
    return;
  }

  for (let i = 1; i < 4; i += 1) {
    const [left, right] = [rest.slice(0, i), rest.slice(i)];
    if (vaild(left)) {
      findAllIp([...current, left], right, set);
    }
  }
};

/**
 * @param {string} s
 * @return {string[]}
 */
var restoreIpAddresses = function(s) {
  const set = new Set();
  findAllIp([], s, set);
  return [...set];
};
