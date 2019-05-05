const findPair = function(s, left) {
  let stack = 1;

  for (let i = left + 1; i < s.length; i += 1) {
    if (s[i] === '[') {
      stack += 1;
    } else if (s[i] === ']') {
      stack -= 1;
    }

    if (stack === 0) {
      return i;
    }
  }

  return null;
};

/**
 * @param {string} s
 * @return {string}
 */
var decodeString = function(s) {
  if (s.length === 0) {
    return '';
  }

  const matchs = s.match(/^\d+/);
  if (matchs) {
    const matched = matchs[0];

    // index of '['
    const left = matched.length;

    // index of ']'
    const right = findPair(s, left);

    const subStr = decodeString(s.slice(left + 1, right));

    const head = subStr.repeat(Number(matched));
    const tail = decodeString(s.slice(right + 1));

    return head.concat(tail);
  }

  return s[0].concat(decodeString(s.slice(1)))
};
