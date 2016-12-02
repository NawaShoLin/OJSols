def contains_nearby_duplicate(nums, k)
    dict = {}
    
    nums.each_with_index do |v, i|
        if dict.key?(v) && i - dict[v] <= k
            return true
        else
            dict[v] = i
        end
    end
    
    false
end
