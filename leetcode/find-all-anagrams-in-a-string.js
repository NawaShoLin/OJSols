/**
 * @param {string} s
 * @param {string} p
 * @return {number[]}
 */
 'use strict';
 
var creatTable = function() {
    let alphabets = "abcdefghijklmnopqrstuvwxyz";
    let table = {};
    for (let alphabet of alphabets) {
        table[alphabet] = 0;
    }
    return table;
}

var sameTable = function(t1, t2) {
    let alphabets = "abcdefghijklmnopqrstuvwxyz";
    for (let a of alphabets) {
        if (t1[a] != t2[a]) {
            return false;
        }
    }
    return true;
}

var findAnagrams = function(s, p) {
    let sLen = s.length;
    let pLen = p.length;

    if (sLen < pLen) {
        return [];
    }

    let sTable = creatTable();
    let pTable = creatTable();
    for (let i = 0; i < pLen; i += 1) {
        sTable[s[i]] += 1;
        pTable[p[i]] += 1;
    }

    let outAry = [];
    if (sameTable(sTable, pTable)) {
        outAry.push(0);
    }

    let lenDiff = sLen - pLen;
    for (let i = 0; i < lenDiff; i += 1) {
        let oldOne = s[i];
        let newOne = s[i + pLen];

        sTable[oldOne] -= 1;
        sTable[newOne] += 1;

        if (sameTable(sTable, pTable)) {
            outAry.push(i + 1);
        }
    }

    return outAry;
};
