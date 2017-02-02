def right_side_view(root)
    rights = []
    dfs(root, 0, 0, rights)
    rights.collect { |x| x[:val] }
end

def dfs(node, layer, code, rights)
    return if node == nil
    
    if (not rights[layer]) || rights[layer][:code] < code
        rights[layer] = {code: code, val: node.val}
    end
    
    dfs(node.left, layer + 1, code * 2, rights)
    dfs(node.right, layer + 1, code * 2 + 1, rights)
end
