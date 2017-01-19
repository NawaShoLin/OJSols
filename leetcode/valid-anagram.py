class Solution(object):
    def isAnagram(self, s, t):
        d = {}
        
        for c in s:
            d[c] = d.get(c, 0) + 1
        
        for c in t:
            if c in d and d[c] > 0:
                d[c] -= 1
            else:
                return False
            
        return all(v == 0 for v in d.values())
        