#include <cmath>

class Solution {
public:
    int countPrimes(int n) {
        if (n < 2) {
            return 0;
        }
        
        vector<int> primes;
        for (int i = 2; i < n; ++i) {
            if (isPrime(i, primes)) {
                primes.push_back(i);
            }
        }
        
        return primes.size();
    }
    
private:
    static bool isPrime(int n, const vector<int>& primes) {
        int max_to_test = static_cast<int>(pow(static_cast<float>(n), 0.5f));
        for (int prime : primes) {
            if (n % prime == 0) {
                return false;
            } else if (prime > max_to_test) {
                return true;
            }
        }
        
        return true;
    }
};