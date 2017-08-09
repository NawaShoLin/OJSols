# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def addTwoNumbers(self, l1, l2):
        if lst_len(l1) < lst_len(l2):
            l1, l2 = l2, l1
        
        add_lst(l1, l2, False)
        return l1

def lst_len(node):
    return 0 if node is None else 1 + lst_len(node.next)
        
def add_lst(longLst, slst, add_one):
    sVal = slst.val if slst else 0
    longLst.val += sVal
    if add_one:
        longLst.val += add_one
    add_one = False
    if longLst.val >= 10:
        longLst.val -= 10
        add_one = True
        if longLst.next is None:
            longLst.next = ListNode(0)
    
    if longLst.next:
        sNext = slst.next if slst else None
        add_lst(longLst.next, sNext, add_one)
            
            