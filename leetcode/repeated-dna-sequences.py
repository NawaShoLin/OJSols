class Solution(object):
    def findRepeatedDnaSequences(self, s):
        SEQ_LEN = 10
        
        seq_dict = {}
        for i in range(len(s) - SEQ_LEN + 1):
            seq = s[i : i + SEQ_LEN]
            if seq in seq_dict:
                seq_dict[seq] += 1
            else:
                seq_dict[seq] = 1
        
        return [x[0] for x in seq_dict.items() if x[1] > 1]
