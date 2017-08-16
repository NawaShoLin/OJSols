int missingNumber(int* nums, int numsSize) {
    int sum = ((numsSize + 0) * (numsSize + 1)) / 2;
    for (int i = 0; i < numsSize; ++i) {
        sum -= nums[i];
    }
    return sum;
}
