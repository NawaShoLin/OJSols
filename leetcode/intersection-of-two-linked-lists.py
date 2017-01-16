# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

def list_len(node):
    s = 0
    while node is not None:
        node = node.next
        s += 1
    return s

class Solution(object):
    def getIntersectionNode(self, headA, headB):
        lenA = list_len(headA)
        lenB = list_len(headB)
        if lenA < lenB:
            lenA, lenB = lenB, lenA
            headA, headB = headB, headA
        
        for _ in xrange(lenA - lenB):
            headA = headA.next
        
        for _ in xrange(lenB):
            if headA == headB:
                return headA
            headA = headA.next
            headB = headB.next
            
        return None
        