/**
 * @param {number[][]} points
 * @return {number}
 */
var maxWidthOfVerticalArea = function(points) {
  const xs = points.map(p => p[0])
  xs.sort((a, b) => a - b);

  let maxArea = 0;
  for (i = 1; i < xs.length; i += 1) {
      const diff = xs[i] - xs[i-1]
      if (diff > maxArea) {
          maxArea = diff
      }
  }
  return maxArea
};
