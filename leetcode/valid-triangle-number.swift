// O(N^3)
// Runtime: 472 ms, faster than 16.67% of Swift online submissions for Valid Triangle Number.
// Memory Usage: 22.8 MB, less than 33.33% of Swift online submissions for Valid Triangle Number.
func factorial(from: Int, to: Int) -> Int {
    return (from...to).reduce(1, { pre, current in pre * current })
}
func c(all: Int, pick: Int) -> Int {
    if all == pick { return 1 }
    let k = max(pick, all - pick)
    return factorial(from: k+1, to: all) / factorial(from: 1, to: all - k)
}

class Solution {
    func triangleNumber(_ nums: [Int]) -> Int {
        var counts: [Int:Int] = [:]
        nums.filter({ $0 != 0}).forEach({ n in
          if let count = counts[n] {
              counts[n] = count + 1
          } else {
              counts[n] = 1
          }
        })

        var total = 0

        let indices = Array(counts).map({ $0.key }).sorted(by: >)
        for (i, a) in indices.enumerated() {
            let aCount = counts[a]!
            if aCount >= 3 {
                total += c(all: aCount, pick: 3)
            }
            let fromI = indices.dropFirst(i+1)
            for (j, b) in fromI.enumerated() {
                let bCount = counts[b]!
                if (aCount > 1) {
                    total += c(all: aCount, pick: 2) * bCount
                }

                if b * 2 <= a && aCount == 1 { break }
                if b * 2 <= a { continue }
                if (bCount > 1) {
                    total += aCount * c(all: bCount, pick: 2)
                }

                for c in fromI.dropFirst(j+1) {
                    if b + c <= a { break }
                    let cCount = counts[c]!
                    total += aCount * bCount * cCount
                }
            }
        }

        return total
    }
}

// O(n^2)
// Runtime: 720 ms, faster than 8.33% of Swift online submissions for Valid Triangle Number.
// Memory Usage: 21.4 MB, less than 33.33% of Swift online submissions for Valid Triangle Number.
class Solution {
    func triangleNumber(_ nums: [Int]) -> Int {
        let sorted = nums.sorted(by: >)
        var count = 0

        for (i, a) in sorted.dropLast().enumerated() {
            var slice = sorted.dropFirst(i+1)
            while slice.count >= 2, let b = slice.first, let c = slice.last {
                if b + c > a {
                    count += slice.count - 1
                    slice = slice.dropFirst()
                } else {
                    slice = slice.dropLast()
                }
            }
        }

        return count
    }
}
