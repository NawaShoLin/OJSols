class Solution(object):
    def topKFrequent(self, nums, k):
        count_dict = {}
        for n in nums:
            if n in count_dict:
                count_dict[n] += 1
            else:
                count_dict[n] = 1
                
        frequents = sorted(count_dict.items(), key=operator.itemgetter(1), reverse=True)
        return [x[0] for x in frequents[:k]]
