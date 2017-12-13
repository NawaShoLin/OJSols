# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
  return 0 if nums.empty?
  harm_len = {}
  nums.each do |n|
    harm_len[n] = if harm_len.key?(n) then harm_len[n] + 1 else 1 end
  end

  harm_len.keys.map { |n|
    if harm_len.key?(n+1) then harm_len[n] + harm_len[n+1] else 0 end
  }.max

end

def inc_val(dict, key)
  dict[key] = 0 if not dict.key?(key)
  dict[key] += 1
end

