class Solution(object):
    def twoSum(self, nums, target):
        need_dict = {}
        for i, n in enumerate(nums):
            if n in need_dict:
                return [need_dict[n], i]
            need_dict[target - n] = i
