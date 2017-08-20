void copy(int* src, int* target, int srcSize, int targetSize) {
    const int d = targetSize - srcSize;
    for (int i = 0; i < srcSize; ++i) {
        target[i + d] = src[i];
    }
}

int allNine(int* digits, int digitsSize) {
    for (int i = 0; i < digitsSize; ++i) {
        if (digits[i] != 9) {
            return 0;
        }
    }
    return 1;
}

/**
 * Return an array of size *returnSize.
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* plusOne(int* digits, int digitsSize, int* returnSize) {
    int rSize = allNine(digits, digitsSize) ? digitsSize + 1 : digitsSize;
    *returnSize = rSize;
    
    int* ary = (int*)calloc(rSize, sizeof(int));
    copy(digits, ary, digitsSize, rSize);
    
    ary[rSize - 1] += 1;
    for (int i = rSize - 1; i >= 0; --i) {
        if (ary[i] >= 10) {
            ary[i] -= 10;
            ary[i-1] += 1;
        }
    }
    
    return ary;
}
