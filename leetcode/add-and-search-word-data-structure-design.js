/**
 * @constructor
 */
var WordDictionary = function() {
    this.root = TrieNode();
};

/**
 * @param {string} word
 * @return {void}
 * Adds a word into the data structure.
 */
WordDictionary.prototype.addWord = function(word) {
    if (word.length === 0) {
        return;
    }

    insertWord(this.root, word, 0);
};

/**
 * @param {string} word
 * @return {boolean}
 * Returns if the word is in the data structure. A word could
 * contain the dot character '.' to represent any one letter.
 */
WordDictionary.prototype.search = function(word) {
    if (word.length === 0) {
        return true;
    } else {
        return searchWord(this.root, word, 0);
    }
};

var TrieNode = function() {
    return { end: false, dict: {} };
};

var insertWord = function(node, word, i) {
    let c = word[i];
    let dict = node.dict;

    if (typeof dict[c] === 'undefined') {
        dict[c] = TrieNode();
    }
    let child = dict[c];

    if (i === word.length - 1) {
        child.end = true;
    } else {
        insertWord(child, word, i + 1);
    }
};

var searchWord = function(node, q, i) {
    if (i === q.length) {
        return node.end;
    }

    let dict = node.dict;
    let c = q[i];
    if (c !== '.') {
        if (typeof dict[c] === 'undefined') {
            return false;
        } else {
            return searchWord(dict[c], q, i + 1);
        }
    } else {
        for (let key in dict) {
            if (searchWord(dict[key], q, i + 1)) {
                return true;
            }
        }
        return false;
    }
};
