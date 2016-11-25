# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
    n != 0 && (n == 1 || (n % 2 == 0 && is_power_of_two(n / 2)))
end
