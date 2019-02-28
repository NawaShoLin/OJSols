// Runtime: 0 ms, faster than 100.00% of Rust online submissions for Excel Sheet Column Title.
// Memory Usage: 2.4 MB, less than 100.00% of Rust online submissions for Excel Sheet Column Title.

fn n2c(n: i32) -> char {
    let u8n = n as u8;
    return (u8n + 65) as char;
}

fn n2s(number: i32) -> String {
    let mut n = number;
    let mut chars = Vec::new();
    while n > 0 {
        n = n - 1;
        let tail = n % 26;
        let c = n2c(tail);
        chars.push(c);
        n = n / 26;
    }

    return chars.iter().rev().collect();
}

impl Solution {
    pub fn convert_to_title(n: i32) -> String {
        return n2s(n);
    }
}
