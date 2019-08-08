// Runtime: 0 ms, faster than 100.00% of Rust online submissions for Projection Area of 3D Shapes.
// Memory Usage: 2.5 MB, less than 100.00% of Rust online submissions for Projection Area of 3D Shapes.

fn x_area(grid: &Vec<Vec<i32>>) -> i32 {
    return grid.iter().map(|row| row.iter().max().unwrap_or(&0)).sum();
}

fn y_area(grid: &Vec<Vec<i32>>) -> i32 {
    return (0..grid.len()).map(
        |i| grid.iter().map(|row| row[i]).max().unwrap_or(0)
    ).sum()
}

fn z_area(grid: &Vec<Vec<i32>>) -> i32 {
    let s: usize = grid.iter().map(
        |row| row.iter().filter(|x| *(*x) != 0).count()
    ).sum();
    return s as i32;
}

impl Solution {
    pub fn projection_area(grid: Vec<Vec<i32>>) -> i32 {
        return x_area(&grid) + y_area(&grid) + z_area(&grid);
    }
}
