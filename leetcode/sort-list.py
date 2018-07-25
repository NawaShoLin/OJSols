# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

def findTail(node):
    if node.next is None:
        return node
    else:
        return findTail(node.next)

def merge(leftList, rightList):
    if leftList is None:
        return rightList

    leftTail = findTail(leftList)
    leftTail.next = rightList
    return leftList

def sortIt(head):
    if head is None or head.next is None:
        return head

    headVal = head.val

    lHead = ListNode(None)
    lNode = lHead
    rHead = ListNode(None)
    rNode = rHead

    # for worse case like: [1,1,1, ...]
    sameHead = ListNode(None)
    sameNode = sameHead

    node = head.next
    head.next = None

    while node is not None:
        nextNode = node.next
        val = node.val
        if val == headVal:
            sameNode.next = node
            sameNode = sameNode.next
        elif val < headVal:
            lNode.next = node
            lNode = lNode.next
        else:
            rNode.next = node
            rNode = rNode.next
        node.next = None
        node = nextNode

    leftList = sortIt(lHead.next)
    rightList = sortIt(rHead.next)
    head.next = sameHead.next
    return merge(leftList, merge(head, rightList))

class Solution(object):
    def sortList(self, head):
        return sortIt(head)
