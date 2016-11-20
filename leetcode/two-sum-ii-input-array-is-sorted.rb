# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    left, right = 0, numbers.length - 1
    while true do
        sum = numbers[left] + numbers[right]
        if sum == target
            return [left + 1, right + 1]
        elsif sum > target
            right -= 1
        else
            left += 1
        end
    end
end
