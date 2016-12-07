def max_depth(root)
    dfs(root)
end

def dfs(n)
    n ? 1 + [dfs(n.left), dfs(n.right)].max : 0
end
