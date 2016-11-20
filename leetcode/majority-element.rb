# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    count_dict = {}
    half = nums.length / 2
    nums.each do |x|
        count_dict[x] = 0 if not count_dict[x] 
        count_dict[x] += 1
        return x if count_dict[x] > half
    end
end
