# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
    if root == nil
        false
    else
        dfs(root, sum)
    end
end

def dfs(root, sum)
    sum -= root.val
    
    if not (root.left || root.right)
        sum == 0
    elsif root.left && root.right
        dfs(root.left, sum) || dfs(root.right, sum)
    elsif root.left
        dfs(root.left, sum) 
    else
        dfs(root.right, sum)
    end
end
