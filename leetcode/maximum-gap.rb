# @param {Integer[]} nums
# @return {Integer}
def maximum_gap(nums)
    if nums.length < 2
        0
    else
        a = nums.sort
        max_diff = (a[0] - a[1]).abs
        (1..(a.length - 1)).each do |i|
            d = (a[i] - a[i-1]).abs
            max_diff = d > max_diff ? d : max_diff
        end
        max_diff
    end
end
