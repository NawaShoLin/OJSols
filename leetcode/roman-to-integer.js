/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function(s) {
    let dict = {
        'I' : 1,
        'V' : 5,
        'X' : 10,
        'L' : 50,
        'C' : 100,
        'D' : 500,
        'M' : 1000
    };
    
    let num = dict[s[s.length - 1]];
    for (let i = s.length - 2; i >= 0; i -= 1) {
        let current = dict[s[i]];
        let pre = dict[s[i+1]];
        
        if (current >= pre) {
            // II , VI, ...
            num += current;
        } else {
            // IV, VX, ...
            num -= current;
        }
    }
    
    return num;
};