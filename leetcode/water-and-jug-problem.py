def gcd(a, b):
    # assume a >= b
    return gcd(b, a % b) if b <> 0 else a

class Solution(object):
    def canMeasureWater(self, x, y, z):
        if x < y:
            x, y = y, x
            
        if y == 0:
            return x == z or z == 0
        else:
            return x + y >= z and z % gcd(x, y) == 0
