# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    return x if x < 2
    
    bin_search(x, 1, x)
end

# find sqrt(x) in [a, b]
def bin_search(x, a, b)
    mid = (a + b) / 2
    sq = mid ** 2
    
    if a == b || sq == x
        mid
    elsif sq > x
        bin_search(x, a, mid - 1)
    else
        (mid + 1) ** 2 > x ? mid : bin_search(x, mid + 1, b)
    end
end
