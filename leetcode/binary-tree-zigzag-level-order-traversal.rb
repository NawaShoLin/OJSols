def zigzag_level_order(root)
    db = []
    dfs(root, 0, 0, db)
    db.each_with_index do |a, i|
        order = i % 2 == 0 ? 1 : -1
        db[i] = a.sort_by { |x| order * x[:id] }
                 .collect { |x| x[:val] }
    end
    
    db
end

def dfs(node, lv, id, db)
    return if node === nil
    db[lv] = [] if not db[lv]
    
    db[lv].push({id: id, val: node.val})
    dfs(node.left, lv + 1, id * 2, db)
    dfs(node.right, lv + 1, id * 2 + 1, db)
end
