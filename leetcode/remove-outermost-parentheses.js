// Runtime: 68 ms, faster than 44.75% of JavaScript online submissions for Remove Outermost Parentheses.
// Memory Usage: 36 MB, less than 100.00% of JavaScript online submissions for Remove Outermost Parentheses.

const isEmpty = (a) => {
  return a.length === 0;
};

/**
* @param {string} S
* @return {string}
*/
var removeOuterParentheses = function(S) {
  const stack = [];
  const collected = [];

  for (let i = 0; i < S.length; i += 1) {
    const c = S[i];
    if (c === '(') {
      if (!isEmpty(stack)) {
        collected.push(c);
      }
      stack.push(1);
    }
    else {
      stack.pop();
      if (!isEmpty(stack)) {
        collected.push(c);
      }
    }
  }

  return collected.join('');
};
