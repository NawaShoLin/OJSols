'use strict';

var createNext = function(pre) {
    let now = [1];
    for (let i = 1; i < pre.length; i += 1) {
        now.push(pre[i-1] + pre[i]);
    }
    now.push(1);
    
    return now;
};  
 
var getRow = function(rowIndex) {
    if (rowIndex === 0) {
        return [1];
    } else if (rowIndex === 1) {
        return [1, 1];
    }
    
    let kth = [1, 1];
    for (let i = 1; i < rowIndex; i += 1) {
        kth = createNext(kth);
    }
    
    return kth;
};
