class Solution(object):
    def longestValidParentheses(self, s):
        stack = []
        maxLen = 0
        lastInvalid = -1
        for i, c in enumerate(s):
            if c == '(' :
                stack.append(i)
            elif stack:
                stack.pop()
                if stack:
                    # Eg. '(()'
                    maxLen = max(maxLen, i - stack[-1])
                else:
                    # Eg. ')()'
                    maxLen = max(maxLen, i - lastInvalid)
            else:
                lastInvalid = i
        return maxLen
