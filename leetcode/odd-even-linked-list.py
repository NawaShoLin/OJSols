import itertools

class Solution(object):
    def oddEvenList(self, head):
        odd = oddHead = ListNode(0)
        even = evenHead = ListNode(0)
        p = head
        for i in itertools.count():
            if p is None:
                break
            
            if i % 2 == 0:
               odd.next = p
               odd = odd.next
            else:
                even.next = p
                even = even.next
            n = p.next
            p.next = None
            p = n
        
        odd.next = evenHead.next
        return oddHead.next
