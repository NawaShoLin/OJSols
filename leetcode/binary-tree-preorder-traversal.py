def dfs(node, pool):
        if node is None:
            return
        pool.append(node.val)
        dfs(node.left, pool)
        dfs(node.right, pool)

class Solution(object):
    def preorderTraversal(self, root):
        pool = []
        dfs(root, pool)
        return pool
