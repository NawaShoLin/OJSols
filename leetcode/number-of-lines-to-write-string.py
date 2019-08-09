# Runtime: 36 ms, faster than 82.24% of Python3 online submissions for Number of Lines To Write String.
# Memory Usage: 13.8 MB, less than 6.25% of Python3 online submissions for Number of Lines To Write String.

class Solution:
    def numberOfLines(self, widths: List[int], S: str) -> List[int]:
        chars = "abcdefghijklmnopqrstuvwxyz"
        dict = {}
        for i, width in enumerate(widths):
            dict[chars[i]] = width

        count = 1
        sLen = 0

        for char in S:
            width = dict[char]
            if sLen + width > 100:
                sLen = width
                count += 1
            else:
                sLen += width

        return [count, sLen]
