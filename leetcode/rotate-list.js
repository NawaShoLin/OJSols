var rotateRight = function(head, k) {
    if (!(head && head.next) || k < 1) {
        return head;
    }
    
    len = listLen(head);
    if (k % len === 0) {
        return head;
    }
    k = (((len - k) % len) + len) % len
    
    // n = k - 1
    let nth = findNthNode(head, k - 1);
    let kth = nth.next
    nth.next = null
    appendToTail(kth, head);
    return kth;
};

var findNthNode = function(node, n) {
    if (n === 0) {
        return node;
    } else {
        return findNthNode(node.next, n - 1);
    }
};

var appendToTail = function (lst, node) {
    if (lst.next !== null) {
        appendToTail(lst.next, node);
    } else {
        lst.next = node;
    }
};

var listLen = function (node) {
    return node === null ? 0 : listLen(node.next) + 1;
};
