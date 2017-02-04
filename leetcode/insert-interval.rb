def insert(intervals, n)
    left = intervals.find { |x| x.end >= n.start && x.start <= n.start }
    right = intervals.find { |x| x.end >= n.end && x.start <= n.end }
    n.start = left ? left.start : n.start
    n.end = right ? right.end : n.end
    
    ls = intervals.select {|x| x.end < n.start }
    rs = intervals.select {|x| x.start > n.end }
    ls + [n] + rs
end
