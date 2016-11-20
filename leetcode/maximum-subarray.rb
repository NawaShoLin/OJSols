# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    return 0 if nums.empty?
    
    # max_sums[i] = max sum end with i
    max_sums = [nums[0]]
    
    (1...nums.length).each { |i|
        max_sums[i] = max(nums[i], max_sums[i - 1] + nums[i])
    }
    
    max_sums.max
end

def max(a, b)
    a > b ? a : b
end
