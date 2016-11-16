class Solution(object):
    def isValid(self, s):
        pdict = {'(':')', '{':'}', '[':']'}
        stack = []
        for c in s:
            if c in pdict:
                stack.append(c)
            elif (not stack) or pdict[stack[-1]] <> c:
                return False
            else:
                stack.pop()
        return not stack
