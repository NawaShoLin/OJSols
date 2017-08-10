#include <algorithm>

using namespace std;

class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        if(nums.size() < 3) {
            return vector<vector<int>>();
        }
        
        sort(begin(nums), end(nums));
        
        vector<vector<int>> sols;
        
        for (int i = 0; i < nums.size() - 2; ++i) {
            if (i > 0 && nums[i] == nums[i-1]) {
                continue;
            }
            
            int target = -nums[i];
            int left = i + 1;
            int right = nums.size() - 1;
            
            while(left < right) {
                if (nums[left] + nums[right] == target) {
                    vector<int> sol({nums[i], nums[left], nums[right]});
                    sols.push_back(sol);
                    while(left < right && nums[left] == nums[left + 1]) 
                        ++left;
                    while(left < right && nums[right] == nums[right - 1]) 
                        --right;
                    ++left;
                } else if (nums[left] + nums[right] < target) {
                    ++left;
                } else {
                    --right;
                }
            }
        }
        
        return sols;
    }
};
