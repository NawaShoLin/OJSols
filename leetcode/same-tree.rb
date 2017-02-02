def is_same_tree(p, q)
    treeHash(p) == treeHash(q)
end

L, R, H = 13, 61, 42589
def treeHash(t)
    if t == nil
        1
    else
        a = treeHash(t.left) * L
        b = treeHash(t.right) * R
        (a + b + t.val) % H
    end
end
