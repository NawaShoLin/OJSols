# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}

def sorted_array_to_bst(nums)
    if nums.empty?
        nil
    else
        m = (nums.length) / 2
        node = TreeNode.new(nums[m])
        node.left = m > 0 ? sorted_array_to_bst(nums[0..(m-1)]) : nil
        node.right = sorted_array_to_bst(nums[(m+1)..nums.length])
        node
    end
end
