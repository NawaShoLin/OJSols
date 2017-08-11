#include <string.h>

int str_match(char* haystack, char* needle, size_t len) {
    size_t i;
    for (i = 0; i < len; ++i) {
        if (haystack[i] != needle[i]) {
            return 0;
        }
    }
    return 1;
}

int strStr(char* haystack, char* needle) {
    size_t hLen = strlen(haystack);
    size_t nLen = strlen(needle);
    if (nLen > hLen) {
        return -1;
    }
    
    size_t lenDiff = hLen - nLen;
    size_t i;
    for (i = 0; i <= lenDiff; ++i) {
        if (str_match(haystack + i, needle, nLen)) {
            return i;
        }
    }
    
    return -1;
}
