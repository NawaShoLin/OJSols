// https://app.codesignal.com/interview-practice/task/5A8jwLGcEpTPyyjTB
#include <algorithm>

std::vector<std::vector<int>> rotateImage(std::vector<std::vector<int>> a) {
  const size_t len = a.size();

  for (size_t row = 0; row < len; row++) {
    for (size_t col = row + 1; col < len; col++) {
      std::swap(a[row][col], a[col][row]);
    }
  }

  const size_t half = len / 2;
  for (size_t row = 0; row < len; row++) {
    for (size_t col = 0; col < half; col++) {
      std::swap(a[row][col], a[row][len - col - 1]);
    }
  }

  return a;
}


// Sol:
// 1 2 3
// 4 5 6
// 7 8 9

// ->
// 1 4 7
// 2 5 8
// 3 6 9

// ->
// 7 4 1
// 8 5 2
// 9 6 3
