#include <limits.h>

bool increasingTriplet(int* nums, int numsSize) {
    if (numsSize < 3) {
        return false;
    }
    
    int first = INT_MAX,
        second = INT_MAX;
    
    for (int i = 0; i < numsSize; ++i) {
        int n = nums[i];
        if (n <= first) {
            first = n;
        } else if (n <= second) {
            second = n;
        } else {
            return 1;
        }
    }
    
    return 0;
}
