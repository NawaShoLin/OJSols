#include <algorithm>

void moveN(vector<int>& nums, int n);

class Solution {
public:
    int removeElement(vector<int>& nums, int val) {
        moveN(nums, val);
        int len = 0;
        while (len < nums.size() && nums[len] != val) {
            ++len;
        }
        return len;
    }
};

// Copy from problem: move-zeroes
void moveN(vector<int>& nums, int n) {
    int z = 0, p = 0;
    while (z < nums.size() && p < nums.size()) {
        while (z < nums.size() && nums[z] != n) {
            ++z;
        }
        while (p < nums.size() && nums[p] == n) {
            ++p;
        }
        
        if (z >= nums.size() || p >= nums.size() ) {
            return;
        } else if (z < p) {
            swap(nums[z], nums[p]);
            swap(z, p);
            while(z > 0 && nums[z - 1] == n) { --z; }
        } else {
            ++p;
        }
    }
}
