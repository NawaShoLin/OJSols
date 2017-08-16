#include <limits.h>

int singleNumber(int* nums, int numsSize) {
    int k = INT_MAX;
    
    for (int i = 0; i < numsSize; ++i) {
        k ^= nums[i];
    }
    
    return INT_MAX ^ k;
}
