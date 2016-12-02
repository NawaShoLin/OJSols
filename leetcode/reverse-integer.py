class Solution(object):
    def reverse(self, x):
        neg = False
        if x < 0:
            neg = True
            x = -x
        
        rx = 0
        while x > 0:
            rx *= 10
            rx += x % 10
            x /= 10
        
        if rx > 2147483647 or rx < -2147483647:
            rx = 0
        
        return rx if not neg else -rx
