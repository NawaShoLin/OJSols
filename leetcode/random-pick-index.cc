#include <cstdlib>
#include <vector>

class Solution {
  vector<int> nums;
public:
  Solution(vector<int> nums)
    :nums(nums)
  {}
    
  int pick(int target) {
    int picked = 0;
    int picked_num = 0;
    for (int i = 0; i < nums.size(); ++i) {
      int num = nums[i];
      if (num == target) {
        ++picked_num;
        if (rand() % picked_num == 0) {
          picked = i;
        }
      }
    }
    
    return picked;
  }
};
