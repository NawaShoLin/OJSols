// Runtime: 64 ms, faster than 89.39% of JavaScript online submissions for Most Common Word.
// Memory Usage: 37 MB, less than 27.27% of JavaScript online submissions for Most Common Word.

const parseToWords = (paragraph) => {
  return paragraph
    .replace(/[^a-zA-Z]/g, ' ')
    .split(' ')
    .filter(Boolean)
    .map(x => x.toLowerCase());
};

/**
 * @param {string} paragraph
 * @param {string[]} banned
 * @return {string}
 */
var mostCommonWord = function (paragraph, banned) {
  const bans = new Set(banned);
  const words = parseToWords(paragraph).filter(x => !bans.has(x));
  const countDict = {};

  words.forEach(word => {
    countDict[word] = (word in countDict) ? countDict[word] + 1 : 1;
  });

  return Object.entries(countDict).reduce(
    ([prevWord, prevCount], [word, count]) => {
      if (count > prevCount) {
        return [word, count];
      } else {
        return [prevWord, prevCount];
      }
    },
    ['', 0]
  )[0];
};
