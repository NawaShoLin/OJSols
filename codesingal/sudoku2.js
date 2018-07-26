function sudoku2(grid) {
  for (let i of range(9)) {
    if (dupInRow(grid, i)){
      return false
    }
    if (dupInCol(grid, i)){
      return false
    }
  }

  for (let r = 0; r < 9; r += 3) {
    for (let c = 0; c < 9; c += 3) {
      if (dupIn3x3(grid, r, c))
        return false
    }
  }

  return true
}

function dupInRow(grid, r) {
  const nums = range(9).map(i => grid[r][i])
  return dup(nums)
}

function dupInCol(grid, c) {
  const nums = range(9).map(i => grid[i][c])
  return dup(nums)
}

function dupIn3x3(grid, r, c) {
  let nums = []
  for (let i of range(3)) {
    for (let j of range(3)) {
      nums.push(grid[r+i][c+j])
    }
  }

  return dup(nums)
}

function range(n) {
  return [...Array(n).keys()]
}

function dup(ns) {
  let dict = {}
  for (let n of ns.filter(x => x !== '.')) {
    if (!dict[n]) {
      dict[n] = true
    } else {
      return true
    }
  }

  return false
}
