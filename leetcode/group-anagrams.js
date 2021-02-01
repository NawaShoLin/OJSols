// Runtime: 124 ms, faster than 78.70% of JavaScript online submissions for Group Anagrams.
// Memory Usage: 47.6 MB, less than 27.80% of JavaScript online submissions for Group Anagrams.

/** @param {string} str */
function keyOf(str) {
    return str.split('').sort().join('')
}

/**
 * @param {string[]} strs
 * @return {string[][]}
 */
var groupAnagrams = function(strs) {
    let dict = {};
    strs.forEach(str => {
        const w = keyOf(str)
        if (dict[w]) {
            dict[w].push(str)
        } else {
            dict[w] = [str]
        }
    })

    return Object.values(dict);
};
