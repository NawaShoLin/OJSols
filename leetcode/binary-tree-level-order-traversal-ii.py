import Queue

class Solution(object):
    def levelOrderBottom(self, root):
        if root is None:
            return []
        
        container = []
        q = Queue.Queue()
        q.put([0, root])
        
        while not q.empty():
            lv, node = q.get()
            if len(container) - 1 < lv:
                container.append([])
            container[lv].append(node.val)
            
            for child in [node.left, node.right]:
            	if child is not None:
                	q.put([lv + 1, child])
        
        container.reverse()
        return container
        
