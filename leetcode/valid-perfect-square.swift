func findSqrt(_ num: Int, from: Int, to: Int) -> Bool {
    let mid = (from + to) / 2
    let mid_square = mid * mid
    
    if from >= to {
        return mid_square == num
    }
    
    if mid_square == num {
        return true
    } else if mid_square < num {
        return findSqrt(num, from: mid + 1, to: to)
    } else {
        return findSqrt(num, from: from, to: mid - 1)
    }
}

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        if num < 4 {
            return num == 1;
        } else {
            return findSqrt(num, from: 2, to: num / 2)
        }
    }
}
