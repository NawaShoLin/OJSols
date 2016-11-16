def concatRp(s, n)
    s + (')' * n)
end

def gpRec(str, n, stack)
    if n == 0
        [concatRp(str, stack)]
    elsif stack == 0
        gpRec(str + '(', n - 1, 1)
    else
        gpRec(str + '(', n - 1, stack + 1) +
        gpRec(str + ')', n, stack - 1)
    end
end

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    gpRec("", n, 0)
end
