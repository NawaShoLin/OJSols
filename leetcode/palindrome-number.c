#include <stdio.h>

int intLen(int x) {
    int len = 1;
    while (x >= 10) {
        len += 1;
        x /= 10;
    }
    return len;
}

int headNum(int x, int n) {
    int tail_count = intLen(x) - n;
    for (int i = 0; i < tail_count; ++i) {
        x /= 10;
    }
    return x;
}

int tailNum(int x, int n) {
    int tail_mod = 10;
    for (int i = 1; i < n; ++i) {
        tail_mod *= 10;
    }
    return x % tail_mod;
}

int reverse(int x) {
    int r = 0;
    while (x > 0) {
        r = r * 10 + x % 10;
        x /= 10;
    }
    return r;
}

bool isPalindrome(int x) {
    if (x < 0) {
        return false;
    } else if (x < 10) {
        return true;
    }
    
    int half_len = intLen(x) / 2;
    int head = headNum(x, half_len);
    int tail = tailNum(x, half_len);
    return tail == reverse(head);
}
