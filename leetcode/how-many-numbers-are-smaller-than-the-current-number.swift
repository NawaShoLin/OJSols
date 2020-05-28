// O(nlogn)
// Runtime: 44 ms, faster than 91.03% of Swift online submissions for How Many Numbers Are Smaller Than the Current Number.
// Memory Usage: 22.5 MB, less than 100.00% of Swift online submissions for How Many Numbers Are Smaller Than the Current Number.

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let countDict = nums.reduce(into: [:]) { counts, n in
            counts[n, default: 0] += 1
        }

        var currentSmaller: Int = 0
        var smallerDict: [Int:Int] = [:]
        Array(countDict.keys).sorted().forEach({ n in
            smallerDict[n] = currentSmaller
            currentSmaller += countDict[n, default: 0]
        })

        return nums.map({smallerDict[$0, default: 0]})
    }
}
