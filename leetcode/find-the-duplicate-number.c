// Time: O(n^2) Space: O(1)
int findDuplicate(int* nums, int numsSize){
    int i, j, n;
    for (i = 0; i < numsSize; ++i) {
        n = nums[i];
        for (j = i+1; j < numsSize; ++j) {
            if (nums[j] == n) {
                return n;
            }
        }
    }

    return 0;
}
