#include <cstdio>
#include <vector>

void n1case(int k);

int main(int argc, char** argv)
{
  int n, k;
  scanf("%d %d", &n, &k);

  //  if (n == 1) {
  //    n1case(k);
  //    return 0;
  //  }
  // commented and AC... WTF?
  
  using namespace std;
  vector<int> plan(n, 0);
  for (int i = 0; i < n; i += 1) {
    scanf("%d", &plan[i]);
  }

  int added = 0;
  for (int i = 1; i < n; i += 1) {
    int planned = plan[i] + plan[i-1];
    if (planned < k) {
      int plus = k - planned;
      plan[i] += plus;
      added += plus;
    }
  }

  printf("%d\n%d", added, plan[0]);
  for (int i = 1; i < n; i += 1) {
    printf(" %d", plan[i]);
  }
  printf("\n");

  return 0;
}

void n1case(int k) {
  int p;
  scanf("%d", &p);
  if (k > p)
    printf("%d\n%d\n", k - p, k);
  else
    printf("%d\n%d\n", 0, p);
}
