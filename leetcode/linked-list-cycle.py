def findCycle(node, s):
    if node is None:
        return False
    elif node in s:
        return True
    else:
        s.add(node)
        return findCycle(node.next, s)

class Solution(object):
    def hasCycle(self, head):
        return findCycle(head, set())
