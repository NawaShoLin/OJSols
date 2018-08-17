# Definition for singly-linked list:
# class ListNode(object):
#   def __init__(self, x):
#     self.value = x
#     self.next = None
#
def removeKFromList(l, k):
    head = ListNode(k+1)
    head.next = l
    current = None
    next = head

    while next is not None:
        current, next = next, next.next
        while next is not None and next.value == k:
            next = next.next
        current.next = next

    return head.next
