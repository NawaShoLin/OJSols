# Definition for an interval.
# class Interval(object):
#     def __init__(self, s=0, e=0):
#         self.start = s
#         self.end = e

# a < b
def overlap(a, b):
    return b.start < a.end

class Solution(object):
    def eraseOverlapIntervals(self, intervals):
        if len(intervals) < 2:
            return 0
        
        intervals.sort(key=lambda x: (x.start, x.end))
        rm_count = 0
        for i in range(1, len(intervals)):
          if overlap(intervals[i-1], intervals[i]):
              rm_count += 1
              intervals[i].end = min(intervals[i-1].end, intervals[i].end)
        return rm_count
