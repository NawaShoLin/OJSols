class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if (head == nil) {
            return nil
        }
        
        var pre: ListNode? = nil
        var ptr: ListNode? = head
        var preVal = (ptr!).val
        while let p = ptr {
            if p.val == preVal && pre != nil {
                (pre!).next = p.next
            } else {
                preVal = p.val
                pre = ptr
            }
            ptr = p.next
        }
        
        return head
    }
}
