def reguess(a, b):
    m = (a + b) / 2
    r = guess(m)
    if r == 0:
        return m
    elif r < 0:
        return reguess(a, m - 1)
    else:
        return reguess(m + 1, b)

class Solution(object):
    def guessNumber(self, n):
        return reguess(1, n)
        