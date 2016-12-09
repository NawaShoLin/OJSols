public class Solution {
    public void DeleteNode(ListNode node) {
        if (node != null && node.next != null) {
            node.val = node.next.val;
            node.next = node.next.next; 
        }
    }
}
