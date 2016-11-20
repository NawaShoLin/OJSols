# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
    root == nil or sm(root.left, root.right)
end

def sm(left, right)
    if left == nil || right == nil
        left == nil && right == nil
    else
        left.val == right.val &&
        sm(left.left, right.right) &&
        sm(left.right, right.left)
    end
end
