'use strict';
var summaryRanges = function(nums) {
    let makeRange = function(min, max) {
        return {min: min, max: max};
    };

    let rToS = function(r) {
        if (r.min == r.max) {
            return "" + r.min;
        } else {
            return "" + r.min + "->" + r.max;
        }
    }
    
    if (nums.length === 0) {
        return [];
    }

    let a = nums[0];
    let b = nums[0];
    let ranges = [];
    for (let n of nums) {
        if (n - b <= 1) {
            b = n;
        } else {
            ranges.push(makeRange(a, b));
            a = b = n;
        }
    }

    ranges.push(makeRange(a, b));

    return ranges.map(rToS);
};
