def max_rob(node, self_pick):
    if node == None:
        return 0

    if not hasattr(node, 'rec'):
        a = node.val + max_rob(node.left, False) + max_rob(node.right, False)
        b = max_rob(node.left, True) + max_rob(node.right, True)
        node.rec = {'a': a, 'b': b}
        
    a, b = node.rec['a'], node.rec['b']
    return max(a, b) if self_pick else b

class Solution(object):
    def rob(self, root):
        return max(max_rob(root, True), max_rob(root, False))
