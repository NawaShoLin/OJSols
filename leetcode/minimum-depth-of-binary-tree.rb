require 'thread'

def min_depth(root)
    return 0 if root == nil
    
    q = Queue.new
    q.push([root, 1])
    
    while not q.empty? do
        node, depth = q.pop
        return depth if node.left == nil && node.right == nil
        q.push([node.left, depth + 1]) if node.left != nil
        q.push([node.right, depth + 1]) if node.right != nil
    end
end
