var countSegments = function(s) {
    let words = s.split(/\s+/);
    let n = words.length;
    if (n > 0 && words[0] === "") {
        n -= 1;
    }
    if (words.length > 1 && words[words.length - 1] === "") {
        n -= 1;
    }
    return n;
};
