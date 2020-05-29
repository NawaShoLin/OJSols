// Runtime: 0 ms, faster than 100.00% of Rust online submissions for Find Numbers with Even Number of Digits.
// Memory Usage: 2.1 MB, less than 100.00% of Rust online submissions for Find Numbers with Even Number of Digits.

fn calDigits(num: i32) -> i32 {
    if num == 0 {
        return 1;
    }

    let mut n = num;
    let mut d = 0;
    while n != 0 {
        d += 1;
        n = n / 10;
    }

    return d;
}

impl Solution {
    pub fn find_numbers(nums: Vec<i32>) -> i32 {
        return nums.iter().filter(|&x| calDigits(*x) % 2 == 0).count() as i32;
    }
}
