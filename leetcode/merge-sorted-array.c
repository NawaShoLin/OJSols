void merge(int* nums1, int m, int* nums2, int n) {
  int rit = m + n - 1;
  m -= 1;
  n -= 1;
  for (; rit >= 0 && m >= 0 && n >= 0; rit -= 1) {
    if (nums1[m] > nums2[n]) {
      nums1[rit] = nums1[m];
      m -= 1;
    } else {
      nums1[rit] = nums2[n];
      n -= 1;
    }
  }

  for (; n >= 0; n -= 1, rit -= 1) {
    nums1[rit] = nums2[n];
  }
}
