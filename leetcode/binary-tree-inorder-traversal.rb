# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
    ary = []
    traversal_rec(root, ary)
    return ary
end

def traversal_rec(node, ary)
    return if node == nil
    traversal_rec(node.left, ary)
    ary.push(node.val)
    traversal_rec(node.right, ary)
end
