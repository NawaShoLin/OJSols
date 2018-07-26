function isCryptSolution(crypt, solution) {
  dict = {}
  solution.forEach(sol => { dict[sol[0]] = sol[1] })
  const numStrs = crypt.map(word =>
    word.split('').map(c => dict[c]).join(''))

  if (numStrs.some(s => s[0] === '0' && s.length > 1)) {
    return false
  } else {
    const nums = numStrs.map(n => parseInt(n, 10))
    return nums[0] + nums[1] === nums[2]
  }
}
