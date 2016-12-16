# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  if n < 0
    my_np(x, n)
  else
    my_pp(x, n)
  end
end

def my_pp(x, n)
  if n == 0
    1
  elsif n == 1
    x
  elsif n % 2 == 0
    my_pp(x, n / 2) ** 2
  else
    x * (my_pp(x, n / 2) ** 2)
  end
end

def my_np(x, n)
  if n == 0
    1
  elsif n == -1
    1 / x
  elsif n % 2 == 0
    my_np(x, n / 2) ** 2
  else
    (my_np(x, (n+1) / 2) ** 2) / x
  end
end
