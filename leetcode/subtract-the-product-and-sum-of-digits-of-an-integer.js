// Runtime: 64 ms, faster than 21.52% of JavaScript online submissions for Subtract the Product and Sum of Digits of an Integer.
// Memory Usage: 33.5 MB, less than 100.00% of JavaScript online submissions for Subtract the Product and Sum of Digits of an Integer.

var subtractProductAndSum = function(n) {
    const numbers = n.toString().split('').map(Number)
    const sum = numbers.reduce((acc, n) => acc + n, 0);
    const prod = numbers.reduce((acc, n) => acc * n, 1);

    return prod - sum
};
