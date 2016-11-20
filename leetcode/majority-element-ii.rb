# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
    bound = nums.length / 3
    count_dict = {}
    nums.each do |x|
        count_dict[x] = 0 if not count_dict[x]
        count_dict[x] += 1
    end
    
    (count_dict.select {|k, v| v > bound }).keys
end
