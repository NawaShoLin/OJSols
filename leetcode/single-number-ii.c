int singleNumber(int* nums, int numsSize) {
    int k = 0;
    // for each bit of 32-bit integer
    for (int i = 0; i < 32; ++i) {
        int times = 0;
        for (int j = 0; j < numsSize; ++j) {
            int n = nums[j];
            times += (n >> i) & 1;
        }
        if (times % 3 != 0) {
            k = k | 1 << i;
        }
    }
    
    return k;
}
