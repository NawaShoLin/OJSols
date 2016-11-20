# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    binSearch(1, n)
end

def binSearch(left, right)
    return left if is_bad_version(left)
    
    m = (left + right) / 2
    if is_bad_version(m)
        binSearch(left, m)
    else
        binSearch(m + 1, right)
    end
end
