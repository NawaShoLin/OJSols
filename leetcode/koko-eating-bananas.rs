// Runtime: 32 ms, faster than 100.00% of Rust online submissions for Koko Eating Bananas.
// Memory Usage: 3.1 MB, less than 100.00% of Rust online submissions for Koko Eating Bananas.

fn hours_to_eat(piles: &Vec<i32>, h: i64, speed: i64) -> i64 {
    let mut hours = 0 as i64;
    for it in piles.iter() {
        let p = *it as i64;
        if speed > p {
            hours += 1
        } else {
            hours += p / speed;
            if p % speed != 0 {
                hours += 1;
            }
        }

        if hours > h {
            return hours;
        }
    }

    return hours;
}

fn bin_search(piles: &Vec<i32>, h: i64, low: i64, high: i64) -> i64 {
    if low >= high {
        return high;
    }

    let mid = (low + high) / 2;
    let hours = hours_to_eat(piles, h, mid);
    if hours > h {
        return bin_search(piles, h, mid + 1, high)
    } else {
        return bin_search(piles, h, low, mid);
    }
}

impl Solution {
    pub fn min_eating_speed(piles: Vec<i32>, h: i32) -> i32 {
        let sum: i64 = piles.iter().map(|x| *x as i64).sum();
        return bin_search(&piles, h as i64, 1, sum) as i32;
    }
}
