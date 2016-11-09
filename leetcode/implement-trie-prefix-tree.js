/**
 * @constructor
 * Initialize your data structure here.
 */
var TrieNode = function() {
    return {end: false};
};

var Trie = function() {
    this.root = TrieNode();
};

/**
 * @param {string} word
 * @return {void}
 * Inserts a word into the trie.
 */
Trie.prototype.insert = function(word) {
    if (word.length > 0) {
        insertRec(this.root, word, 0);
    }
};

/**
 * @param {string} word
 * @return {boolean}
 * Returns if the word is in the trie.
 */
Trie.prototype.search = function(word) {
    if (word.length === 0) {
        return true;
    } else {
        return searchRec(this.root, word, 0);
    }
};

/**
 * @param {string} prefix
 * @return {boolean}
 * Returns if there is any word in the trie
 * that starts with the given prefix.
 */
Trie.prototype.startsWith = function(prefix) {
    if (prefix.legth === 0) {
        return true;
    } else {
        return startsWithRec(this.root, prefix, 0);
    }
};

/**
 * Your Trie object will be instantiated and called as such:
 * var trie = new Trie();
 * trie.insert("somestring");
 * trie.search("key");
 */
 
var insertRec = function(node, word, i) {
    let c = word[i];
    if (typeof node[c] === 'undefined') {
        node[c] = TrieNode();
    }
    
    if (i === word.length - 1) {
        node[c].end = true;
    } else {
        insertRec(node[c], word, i + 1);
    }
};


var searchRec = function(node, word, i) {
    let c = word[i];
    
    if (typeof node[c] === 'undefined') {
        return false;
    } else if (i === word.length - 1) {
        return node[c].end;
    } else {
        return searchRec(node[c], word, i + 1);
    }
};

var startsWithRec = function(node, word, i) {
    if (i >= word.length) {
        return true;
    }
    
    let c = word[i];
    if (typeof node[c] === 'undefined') {
        return false;
    } else {
        return startsWithRec(node[c], word, i + 1);
    }
}
