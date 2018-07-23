/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} head
 * @param {number} n
 * @return {ListNode}
 */
var removeNthFromEnd = function(head, n) {
  const len = listLen(head, 0)
  if (len === 1) {
    return null
  } else if (len === n) {
    return head.next
  }

  removeIt(head, 0, len - n)
  return head
};

var removeIt = function(node, i, n) {
  if (i + 1 === n) {
    node.next = node.next.next
  } else {
    removeIt(node.next, i + 1, n)
  }
}

var listLen = function(node, len) {
  if (node === null) {
    return len
  } else {
    return listLen(node.next, len + 1)
  }
}
