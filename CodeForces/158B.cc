#include <cstdio>
#include <algorithm>

using namespace std;

void merge13(int* c) {
  int m = min(c[1], c[3]);
  c[1] -= m;
  c[3] -= m;
  c[4] += m;
}

void merge22(int* c) {
  int n = c[2] / 2;
  c[2] -= 2 * n;
  c[4] += n;
}

void merge12(int* c) {
  int n = min(c[1] / 2, c[2]);
  c[1] -= n * 2;
  c[2] -= n;
  c[4] += n;

  if (c[2] && c[1]) {
    c[2] -= 1;
    c[1] -= 1;
    c[3] += 1;
  }
}

void merge11(int* c) {
  int n4 = c[1] / 4;
  c[1] -= n4 * 4;
  c[4] += n4;

  if (c[1] == 3) {
    c[1] = 0;
    c[3] += 1;
  } else if (c[1] == 2) {
    c[2] += 1;
    c[1] = 0;
  }
}

int main(int argc, char** argv)
{
  int count[5] = {0};
  
  int num;
  scanf("%d", &num);

  for (int i = 0; i < num; i += 1) {
    int s;
    scanf("%d", &s);

    count[s] += 1;
  }

  merge13(count);
  merge22(count);
  if (count[3] == 0) {
    merge12(count);
    merge11(count);
  }

  int sum = 0;
  for (int i = 1; i <= 4; i += 1) {
    sum += count[i];
  }

  printf("%d\n", sum);}
