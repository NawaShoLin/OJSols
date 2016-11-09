// Copyright 2013 N.S.Lin @ CSIE.NTNU(Taiwan)
// == UVa Problem 136 - Ugly Numbers ==
//
// this version could get the answer but TLE (about 20sec with "gcc -O2")
// You should submit a one-line code like:
//   printf("The 1500\'th ugly number is 123456.\n" );

#include <cstdio>

int FullReduce(int n, int m) {
  while (n%m == 0) { n /= m; }
  return n;
}

bool Ugly(int n) {
  n = FullReduce(n, 2);
  n = FullReduce(n, 3);
  n = FullReduce(n, 5);
  return n == 1;
}

int main(int argc, char** argv) {
  const int MaxUglyNum = 1500;
  int i = 1;
  for (int ugly_ctr = 0 ; ugly_ctr < MaxUglyNum ; ++i) {
    if (Ugly(i)) { ++ugly_ctr; }
  }
  printf("%d\n", i-1);
  return 0;
}
