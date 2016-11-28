class Solution(object):
    def reverseVowels(self, s):
        s = list(s)
        vowels = "aeiouAEIOU"
        i, j = 0, len(s) - 1
        
        while True:
            while i < len(s) and s[i] not in vowels:
                i += 1
            while j >= 0 and s[j] not in vowels:
                j -= 1
                
            if i >= j:
                break
            
            s[i], s[j] = s[j], s[i]
            i += 1
            j -= 1
        
        return "".join(s)
