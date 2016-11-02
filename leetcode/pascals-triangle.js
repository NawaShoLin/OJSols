'use strict';
 
var generate = function(numRows) {
    if (numRows === 0) {
        return [];
    } else if (numRows === 1) {
        return [[1]];
    }
    
    let pascals = [[1], [1,1]];
    
    for (let i = 2; i < numRows; i += 1) {
        let pre = pascals[i-1];
        let current = [1];
        for (let j = 1; j < pre.length; j += 1) {
            current.push(pre[j] + pre[j-1]);
        }
        current.push(1);
        pascals.push(current);
    }
    
    return pascals;
};
