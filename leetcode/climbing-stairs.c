// a1=1 a2=2 a3 = a1(+2) + a2(+1)

int climbStairs(int n) {
    if (n < 3) {
        return n < 2 ? 1 : 2;
    } else {
        // ... a b n
        int a = 1, b = 2;
        for (int i = 3; i <= n; ++i) {
            int t = a + b;
            a = b;
            b = t;
        }
        return b;
    }
}
