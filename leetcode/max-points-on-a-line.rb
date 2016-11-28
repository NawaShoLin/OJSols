def max_points(points)
    return points.length if points.length < 3
    
    end_index = points.length - 1
    global_max = 0
    (0...end_index).each do |i| 
        p = points[i]
        dict = {}
        same_count = 0
        ((i+1)..end_index).each do |j|
            q = points[j]
            if same_point(p, q)
                same_count += 1
            else
                line = line_hash(p, q)
                dict[line] = 1 if not dict[line]
                dict[line] += 1
            end
        end
        max = dict.reduce(1) { |m, (k, v)| m = v > m ? v : m }
        max += same_count
        global_max = max > global_max ? max : global_max
    end
    
    global_max
end

K1, K2, K3, K4 = 58763, 138763, 148763, 258763
def line_hash(p, q)
    # ax + by = c
    xd = p.x - q.x
    yd = p.y - q.y
    
    if xd == 0
        K3 * p.x
    elsif yd == 0
        K4 * p.y
    else
        xd, yd = -xd, -yd if yd < 0
        g = yd.gcd(xd)
        a, b = yd / g, xd / g
        c = a * p.x + b * p.y
        a + K1 * b + K2 * c
    end
end

def same_point(p, q)
    p.x == q.x && p.y == q.y
end
