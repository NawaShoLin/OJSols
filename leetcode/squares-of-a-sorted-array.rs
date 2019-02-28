// Runtime: 16 ms, faster than 100.00% of Rust online submissions for Squares of a Sorted Array.
// Memory Usage: 3.2 MB, less than 25.00% of Rust online submissions for Squares of a Sorted Array.

impl Solution {
    pub fn sorted_squares(a: Vec<i32>) -> Vec<i32> {
        let mut squares: Vec<i32> = a.iter().map(|x| x * x).collect();
        squares.sort();
        return squares;
    }
}
