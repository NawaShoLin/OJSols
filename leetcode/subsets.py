class Solution(object):
    def subsets(self, nums):
        pool = set()
        findRec(nums, 0, [], pool)
        return [list(x) for x in pool]
        

def findRec(nums, i, current, pool):
    if i == len(nums):
        pool.add(tuple(current))
        
    else:
        current.append(nums[i])
        findRec(nums, i + 1, current[:-1], pool)
        findRec(nums, i + 1, current, pool)
