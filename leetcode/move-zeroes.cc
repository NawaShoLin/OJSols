#include <algorithm>

class Solution {
public:
    void moveZeroes(vector<int>& nums) {
        int z = 0, p = 0;
        while (z < nums.size() && p < nums.size()) {
            while (nums[z] != 0) {
                ++z;
            }
            while (nums[p] == 0) {
                ++p;
                
            }
            
            if (z >= nums.size() || p >= nums.size() ) {
                return;
            } else if (z < p) {
                swap(nums[z], nums[p]);
                swap(z, p);
                while(z > 0 && nums[z - 1] == 0) { --z; }
            } else {
                ++p;
            }
        }
    }
};
