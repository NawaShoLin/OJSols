def remove_elements(head, val)
    p = head
    while p != nil do
        nextP = p.next
        while nextP != nil && nextP.val == val do
            nextP = nextP.next
        end
        p.next = nextP
        p = nextP
    end
    
    p = head
    while p != nil && p.val == val do
        p = p.next
    end
    
    return p
end
