/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
#include <algorithm>
#include <queue>

class Solution {
public:
    ListNode* mergeKLists(vector<ListNode*>& lists) {
        ListNode* head = new ListNode(0);
        ListNode* tail = head;
        
        auto comp = [] (ListNode* a, ListNode* b) {
            return a->val > b->val;
        };  
        priority_queue<ListNode* , vector<ListNode*>, decltype(comp)> list_queue(comp);
        for (auto node : lists) {
            if (node != nullptr) {
                list_queue.push(node);
            }
        }
        
        while(!list_queue.empty()) {
            ListNode* minOne = list_queue.top();
            list_queue.pop();
            tail->next = minOne;
            tail = tail->next;
            if (minOne->next != nullptr) {
                list_queue.push(minOne->next);
            }
        }
        
        ListNode* ans = head->next;
        delete(head);
        return ans;
    }
};
