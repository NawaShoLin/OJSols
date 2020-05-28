// Runtime: 0 ms, faster than 100.00% of C online submissions for Split a String in Balanced Strings.
// Memory Usage: 5.1 MB, less than 100.00% of C online submissions for Split a String in Balanced Strings.

int balancedStringSplit(char * s){
    int r = 0;
    int l = 0;
    int count = 0;

    while(*s) {
        if (*s == 'R') {
            ++r;
        } else if (*s == 'L') {
            ++l;
        }
        if (r == l) {
            ++count;
        }
        ++s;
    }

    return count;
}
