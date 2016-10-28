class Solution {
    func merge(_ intervals: [Interval]) -> [Interval] {
        if intervals.count == 0 {
            return []
        }
    
        let sorted_intervals = intervals.sorted(by: { $0.start < $1.start })
        var merged_intervals: [Interval] = []
        
        var current = sorted_intervals[0]
        for interval in sorted_intervals {
            if interval.start <= current.end {
                current.end = max(current.end, interval.end)
            } else {
                merged_intervals.append(current)
                current = interval
            }
        }
        merged_intervals.append(current)
        
        return merged_intervals
    }
}
