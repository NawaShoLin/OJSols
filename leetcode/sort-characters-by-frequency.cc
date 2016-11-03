#include <algorithm>
#include <map>
#include <vector>

struct Rec {
    char c;
    int n;
    Rec(char ch) :c(ch), n(1){}
};

class Solution {
public:
    string frequencySort(string s) {
        map<char, Rec> dict;
        
        for (char c : s) {
            if (dict.count(c) == 0) {
                dict.insert(pair<char, Rec>(c, Rec(c)));
            } else {
                dict.at(c).n += 1;
            }
        }
        
        vector<Rec> v;
        for (auto e : dict) {
            v.push_back(e.second);
        }
        
        sort(begin(v), end(v), [](const Rec& a, const Rec& b) {
            return a.n > b.n;
        });
        
        string ans;
        for (auto& r : v) {
            ans.append(r.n, r.c);
        }
        return ans;
    }
};
