// Runtime: 64 ms, faster than 89.42% of JavaScript online submissions for Unique Morse Code Words.
// Memory Usage: 35.8 MB, less than 28.34% of JavaScript online submissions for Unique Morse Code Words.

const msCodes = [
  ".-","-...","-.-.","-..",".",
  "..-.","--.","....","..",".---",
  "-.-",".-..","--","-.","---",
  ".--.","--.-",".-.","...","-",
  "..-","...-",".--","-..-","-.--","--.."
];

const dict = {};
const a = 'a'.charCodeAt(0);
const z = 'z'.charCodeAt(0);
for (let i = a; i <= z; i += 1) {
  const char = String.fromCharCode(i);
  dict[char] = msCodes[i - a]; 
}

const hash = (str) => {
  const len = str.length;
  let h = 1;
  for (let i = 0; i < len; i += 1) {
    const code = dict[str[i]]
    for (let j = 0; j < code.length; j += 1) {
      const char = code[j];
      const mulP = char === '.' ? 13 :  103;
      h = ((h + 1) * mulP) % 3571;
    }
  }

  return h;
};

/**
 * @param {string[]} words
 * @return {number}
 */
var uniqueMorseRepresentations = function(words) {
  const set = {}
  for (const word of words) {
    const h = hash(word);
    set[h] = true;
  }

  return Object.keys(set).length;
};
