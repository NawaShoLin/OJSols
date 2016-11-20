# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    return [] if nums.empty?
    
    zore_count = nums.reduce(0) { |sum, x| sum + (x == 0 ? 1 : 0) }
    if zore_count > 1
        [0] * nums.length
    elsif zore_count == 1
        all_product = nums.reduce(1) { |p, x| p * (x == 0 ? 1 : x) }
        nums.map { |x| x == 0 ? all_product : 0 }
    else
        all_product = nums.reduce(:*)
        nums.map { |x| all_product / x }
    end
end
