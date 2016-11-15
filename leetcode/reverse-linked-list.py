def reverse(pre, ptr):
    next = ptr.next
    ptr.next = pre
    if next == None:
        return ptr
    else:
        return reverse(ptr, next)

class Solution(object):
    def reverseList(self, head):
        if head == None:
            return None
        else:
            return reverse(None, head)
