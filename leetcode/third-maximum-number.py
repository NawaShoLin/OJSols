def nthMax(nums, n):
    maxs = []
    for i in range(n):
        m = None
        for num in nums:
            if (m is None or num > m) and (num not in maxs):
                m = num
        maxs.append(m)
    return maxs[-1] if maxs[-1] is not None else maxs[0]

class Solution(object):
    def thirdMax(self, nums):
        return nthMax(nums, 3)
