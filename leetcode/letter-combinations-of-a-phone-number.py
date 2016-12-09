class Solution(object):
    def letterCombinations(self, digits):
        if digits == "":
            return []
        
        phone_map = {
            '1' : '', '2' : 'abc', '3': 'edf',
            '4' : 'ghi', '5' : 'jkl', '6' : 'mno',
            '7' : 'pqrs' , '8' : 'tuv', '9' : 'wxyz' }
        
        pool = []
        megumin(digits, [""], 0, phone_map, pool)
        return pool

def megumin(digits, nows, i, p_map, pool):
    if i == len(digits):
        pool.extend(nows)
        return
    
    d = digits[i]
    if len(p_map[d]) == 0:
        megumin(digits, nows, i + 1, p_map, pool)
    else:
        for c in p_map[d]:
            nexts = [s + c for s in nows]
            megumin(digits, nexts, i + 1, p_map, pool)
