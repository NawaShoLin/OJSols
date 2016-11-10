from sets import Set

def make_char_dict(s):
    char_dict = {}
    for c in s:
        if c in char_dict:
            char_dict[c] += 1
        else:
            char_dict[c] = 1
    return char_dict

class Solution(object):
    def findTheDifference(self, s, t):
        s_dict = make_char_dict(s)
        t_dict = make_char_dict(t)
        
        for k in t_dict:
            if k not in s_dict or s_dict[k] <> t_dict[k]:
                return k
