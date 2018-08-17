int numJewelsInStones(char* J, char* S) {
  int dict[256] = {0};

  for (char* p = J; *p != '\0'; ++p) {
    dict[*p] = 1;
  }

  int sum = 0;
  for (char* p = S; *p != '\0'; ++p) {
    sum += dict[*p];
  }

  return sum;
}
