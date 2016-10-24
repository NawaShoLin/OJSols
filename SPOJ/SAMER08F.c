#include <stdio.h>
#include <stddef.h>

int main (int argc, char** argv) {
  const size_t LEN = 100;
  unsigned table[101] = {0};

  int i;
  for (i = 1; i <= LEN; i += 1) {
    table[i] = i * i + table[i - 1];
  }

  int n;
  while (1) {
    scanf("%d", &n);
    if (n == 0) {
      break;
    }

    printf("%d\n", table[n]);
  }

  return 0;
}
