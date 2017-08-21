int minValue(int* nums, int* muls, int* mul_indices, int mul_len) {
    int minVal = INT_MAX;
    for (int i = 0; i < mul_len; ++i) {
        int val = nums[mul_indices[i]] * muls[i];
        if (val < minVal) {
            minVal = val;
        }
    }
    return minVal;
}

void updataIndices(int val, int* nums, int* muls, int* mul_indices, int mul_len) {
    for (int i = 0; i < mul_len; ++i) {
        int mul_val = nums[mul_indices[i]] * muls[i];
        if (mul_val == val) {
            ++mul_indices[i];
        }
    }
}


int nthUglyNumber(int n) {
    if (n < 2) {
        return n;
    }
    
    int* ugly_nums = calloc(n, sizeof(int));
    ugly_nums[0] = 1;
    
    int muls[] = {2, 3, 5};
    int mul_len = sizeof(muls) / sizeof(int);
    int* mul_indices = (int*)calloc(mul_len, sizeof(int));
    
    for (int i = 1; i < n; ++i) {
        ugly_nums[i] = minValue(ugly_nums, muls, mul_indices, mul_len);
        updataIndices(ugly_nums[i], ugly_nums, muls, mul_indices, mul_len);
    }
    
    int ans = ugly_nums[n-1];
    free(ugly_nums);
    free(mul_indices);
    
    return ans;
}
