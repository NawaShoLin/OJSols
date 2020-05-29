// Runtime: 8 ms, faster than 67.35% of Swift online submissions for Compare Version Numbers.
// Memory Usage: 21.4 MB, less than 100.00% of Swift online submissions for Compare Version Numbers.

func toNums(_ version: String) -> [Int] {
    return version.split(separator: ".").map({ Int($0) ?? 0 })
}

func compare(_ ov1: [Int], _ ov2: [Int]) -> Int {
    let v1 = ov1 + Array(repeating: 0, count: max(0, ov2.count - ov1.count))
    let v2 = ov2 + Array(repeating: 0, count: max(0, ov1.count - ov2.count))
    for (i, a) in v1.enumerated() {
        let b = v2[i]
        if a > b { return 1 }
        if a < b { return -1 }
    }

    return 0
}

class Solution {
    func compareVersion(_ version1: String, _ version2: String) -> Int {
        let (ver1, ver2) = (toNums(version1), toNums(version2))
        return compare(ver1, ver2)
    }
}
