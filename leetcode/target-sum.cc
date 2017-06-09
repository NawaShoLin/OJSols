class Solution {
public:
    int findTargetSumWays(vector<int>& nums, int S) {
        return findSum(nums, S, 0, 0);
    }
    
    static int findSum(vector<int>& nums, int S, int i, int current) {
        int add = current + nums[i];
        int minus = current - nums[i];
        if (i >= nums.size() - 1) {
             int count = 0;
             if (add == S) {
                 count += 1;
             }
             if (minus == S) {
                 count += 1;
             }
             return count;
        } else {
            return findSum(nums, S, i + 1, add) + findSum(nums, S, i + 1, minus);
        }
    }
};
