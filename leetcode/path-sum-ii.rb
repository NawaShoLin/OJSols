def path_sum(root, sum)
    return [] if root == nil
    pool = []
    dfs(root, [], pool, sum)
    pool
end

def dfs(node, path, pool, sum)
    path += [node.val]
    if not (node.left || node.right)
        pool.push(path) if path.reduce(:+) == sum
    else
        dfs(node.left, path, pool, sum) if node.left
        dfs(node.right, path, pool, sum) if node.right
    end
end
