/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public int val;
 *     public ListNode next;
 *     public ListNode(int x) { val = x; }
 * }
 */
public class Solution {
    private static void SortedMerge(ListNode a, ListNode b) {
        if (a.next == null) {
            a.next = b;
            return;
        } else if (b == null) {
            return;
        }
        
        if (b.val > a.val) {
            if (b.val > a.next.val) {
                SortedMerge(a.next, b);
            } else {
                var bn = b.next;
                var an = a.next;
                a.next = b;
                b.next = an;
                SortedMerge(b, bn);
            }
        } else {
            var bn = b.next;
            b.next = a.next;
            a.next = b;
            SortedMerge(b, bn);
        }
    }
    
    public ListNode MergeTwoLists(ListNode l1, ListNode l2) {
        if (l1 == null) {
            return l2;
        } else if (l2 == null) {
            return l1;
        }
        
        if (l1.val > l2.val) {
            var t = l1;
            l1 = l2;
            l2 = t;
        }
        SortedMerge(l1, l2);
        return l1;
    }
}
