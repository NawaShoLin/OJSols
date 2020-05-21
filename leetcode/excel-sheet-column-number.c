// Runtime: 0 ms, faster than 100.00% of C online submissions for Excel Sheet Column Number.
// Memory Usage: 5 MB, less than 100.00% of C online submissions for Excel Sheet Column Number.

int titleToNumber(char* s){
    int result = 0;
    while(*s) {
        result *= 26;
        result += *s - 'A' + 1;
        s++;
    }
    return result;
}
