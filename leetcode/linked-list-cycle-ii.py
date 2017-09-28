def findCycle(node, s):
    if node is None:
        return None
    elif node in s:
        return node
    else:
        s.add(node)
        return findCycle(node.next, s)

class Solution(object):
    def detectCycle(self, head):
        return findCycle(head, set())
