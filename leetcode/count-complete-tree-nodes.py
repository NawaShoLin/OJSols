# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

def count_depth(node):
    return -1 if node is None else count_depth(node.left) + 1
    
def find_leaf(node, n, shift):
    if (shift == -1):
        return node is not None
    
    way = (n >> shift) & 1
    if way == 1:
        return find_leaf(node.right, n, shift - 1)
    else:
        return find_leaf(node.left, n, shift - 1)

# a < b
def bin_search(a, b, root, sh):
    if b - a < 2:
        return a
    mid = (a + b) / 2
    if find_leaf(root, mid, sh):
        return bin_search(mid, b, root, sh)
    else:
        return bin_search(a, mid, root, sh)

class Solution(object):
    def countNodes(self, root):
        if root is None:
            return 0
        
        depth = count_depth(root)
        max_leaf_len = (2 ** depth)
        leaf_count = 0
        if find_leaf(root, max_leaf_len - 1, depth - 1):
            leaf_count = max_leaf_len
        else:
            leaf_count = bin_search(0, max_leaf_len - 1, root, depth - 1) + 1
        
        non_leaf_count = (2 ** depth) - 1
        return non_leaf_count + leaf_count
