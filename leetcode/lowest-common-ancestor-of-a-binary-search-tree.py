def lca(node, p, q):
    if node is None:
        return None
    
    if node.val > p.val and node.val > q.val:
        return lca(node.left, p, q)
    elif node.val < p.val and node.val < q.val:
        return lca(node.right, p, q)
    else:
        return node

class Solution(object):
    def lowestCommonAncestor(self, root, p, q):
        return lca(root, p, q)
