func getEle(_ matrix: [[Int]], at: Int) -> Int {
    let w = matrix[0].count
    let r = at / w
    let c = at % w
    return matrix[r][c]
}

func binSearch(_ matrix: [[Int]], _ target: Int, from: Int, to: Int) -> Bool {
    if from == to {
        return getEle(matrix, at: from) == target
    }
    
    let mid = (from + to) / 2
    let midVal = getEle(matrix, at: mid)
    if midVal == target {
        return true
    } else if target > midVal {
        return binSearch(matrix, target, from: mid + 1, to: to)
    } else {
        return binSearch(matrix, target, from: from, to: mid)
    }
}

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.count == 0 || matrix[0].count == 0 {
            return false
        }
        let totalCount = matrix[0].count * matrix.count
        return binSearch(matrix, target, from: 0, to: totalCount - 1)
    }
}
