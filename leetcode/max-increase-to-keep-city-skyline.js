const ranges = (grid) => {
  const { length } = grid;
  const rowLine = new Array(length).fill(0);
  const colLine = new Array(length).fill(0);
  for (let r = 0; r < length; r += 1) {
    for(let c = 0; c < length; c += 1) {
      rowLine[c] = Math.max(rowLine[c], grid[r][c]);
      colLine[r] = Math.max(colLine[r], grid[r][c]);
    }
  }

  return { rowLine, colLine };
}

/**
 * @param {number[][]} grid
 * @return {number}
 */
var maxIncreaseKeepingSkyline = function(grid) {
  const { length } = grid;
  const { rowLine, colLine } = ranges(grid);

  let sum = 0;
  for (let r = 0; r < length; r += 1) {
    for(let c = 0; c < length; c += 1) {
      sum += Math.min(rowLine[c], colLine[r]) - grid[r][c];
    }
  }

  return sum;
};
