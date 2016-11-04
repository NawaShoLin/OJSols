// GCC C11 5.1.0
#include <stdio.h>
#include <limits.h>

int main()
{
  int n;
  scanf("%d", &n);

  int a = 0, pre = INT_MAX;
  int len = 1, max_len = 1;
  for (int i = 0; i < n; ++i) {
    scanf("%d", &a);
    if (a < pre) {
      len = 1;
    } else {
      len += 1;
    }
    max_len = (max_len > len) ? max_len : len;
    pre = a;
  }

  printf("%d\n", max_len);
}
