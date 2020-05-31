## Runtime: 32 ms, faster than 65.37% of Python3 online submissions for Spiral Matrix II.
## Memory Usage: 13.7 MB, less than 9.09% of Python3 online submissions for Spiral Matrix II.

class Solution:
    def generateMatrix(self, n: int) -> List[List[int]]:
        m = [[0 for j in range(n)] for i in range(n)]
        top = 0
        bottom = n - 1
        left = 0
        right = n -1

        d = 1
        count = 0

        while top <= bottom and left <= right:
            if d == 1:
                d = 2
                for i in range(left, right + 1):
                    count += 1
                    m[top][i] = count
                top += 1
            if d == 2:
                d = 3
                for i in range(top, bottom + 1):
                    count += 1
                    m[i][right] = count
                right -= 1
            if d == 3:
                d = 4
                for i in range(right, left -1, -1):
                    count += 1
                    m[bottom][i] = count
                bottom -= 1
            if d == 4:
                d = 1
                for i in range(bottom, top - 1, -1):
                    count += 1
                    m[i][left] = count
                left += 1

        return m


