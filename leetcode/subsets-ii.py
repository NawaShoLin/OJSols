from sets import Set

def findSubsets(ary, nums, i, s):
    if i >= len(nums):
        s.add(tuple(sorted(ary)))
    else:
        a2 = ary[:]
        a2.append(nums[i])
        findSubsets(ary, nums, i + 1, s)
        findSubsets(a2, nums, i + 1, s)

class Solution(object):
    def subsetsWithDup(self, nums):
        s = Set()
        findSubsets([], nums, 0, s)
        return list(s)
        