# Runtime: 720 ms, faster than 13.91% of Python3 online submissions for Capacity To Ship Packages Within D Days.
# Memory Usage: 16.9 MB, less than 6.67% of Python3 online submissions for Capacity To Ship Packages Within D Days.

from typing import List
from math import floor

class Solution:
    def days_of_capacity(self, capacity: int):
        days = 1
        day_capacity = capacity

        for weight in self.weights:
            if weight <= day_capacity:
                day_capacity -= weight
            else:
                days += 1
                day_capacity = capacity - weight
            if days > self.D:
                return days

        return days

    def find_min_capacity(self, low: int, high: int) -> int:
        if low >= high:
            return high

        mid = floor((low + high) / 2)
        days_required = self.days_of_capacity(mid)

        if days_required > self.D:
            return self.find_min_capacity(mid + 1, high)
        else:
            return self.find_min_capacity(low, mid)

    def shipWithinDays(self, weights: List[int], D: int) -> int:
        self.weights = weights
        self.D = D

        min_capacity = max(weights)
        weight_sum = sum(weights)
        return self.find_min_capacity(min_capacity, weight_sum)
