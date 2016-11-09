#include <algorithm>

class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        if (nums.size() == 0) {
            return 0;
        }
        
        int pre = nums[0];
        size_t newLen = 1;
        
        for (size_t i = 1; i < nums.size(); ++i) {
            if (nums[i] != pre) {
                pre = nums[i];
                swap(nums[i], nums[newLen]);
                newLen += 1;
            }
        }
        
        return newLen;
    }
};
