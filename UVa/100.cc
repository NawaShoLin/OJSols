// Copyright 2013 N.S.Lin @ CSIE.NTNU(Taiwan)
// == UVa Problem 100 - The 3n+1 Problem == 
#include <cstdio>
#include <algorithm>

int RecTimes(int n);

int main(int argc, char** argv) {
  using std::swap;
  int a, b;
  while (scanf("%d%d", &a, &b) != EOF) {
    int min = a, max = b;
    if (min > max) { swap(min, max); }

    int max_rec_times = 0;
    for (int i = min ; i <= max ; ++i) {
      int rec_times = RecTimes(i);
      if (rec_times > max_rec_times) { max_rec_times = rec_times; }
    }

    printf("%d %d %d\n", a, b, max_rec_times);
  }

  return 0;
}

int RecTimes(int n) {
  int loop_counter = 1;
  while (n != 1) {
    ++loop_counter;
    if (n%2 == 1) {
      n = n*3 + 1;
    } else {
      n /= 2;
    }
  }

  return loop_counter;
}
