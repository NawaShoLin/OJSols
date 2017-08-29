#include <functional>
#include <queue>

class MedianFinder {
    priority_queue<int> littler_nums;
    priority_queue<int, vector<int>, greater<int> > larger_nums;
public:
    /** initialize your data structure here. */
    MedianFinder()
    {};
    
    void addNum(int num) {
        littler_nums.push(num);
        if (littler_nums.size() > larger_nums.size() + 1) {
            int largest_little_num = littler_nums.top();
            littler_nums.pop();
            larger_nums.push(largest_little_num);
        }
        
        if (!larger_nums.empty()) {
            int littler_num = littler_nums.top();
            int larger_num = larger_nums.top();
            if (littler_num > larger_num) {
                littler_nums.pop();
                larger_nums.pop();
                littler_nums.push(larger_num);
                larger_nums.push(littler_num);
            }
        }
    }
    
    double findMedian() {
        int total_count = littler_nums.size() + larger_nums.size();
        if (total_count == 0) {
            return 0;
        } else if (total_count % 2 == 1) {
            return littler_nums.top();
        } else {
            return (littler_nums.top() + larger_nums.top()) * 0.5;
        }
    }
};
