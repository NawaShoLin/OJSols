// Runtime: 1444 ms, faster than 60.00% of Swift online submissions for Word Subsets.
// Memory Usage: 24.4 MB, less than 100.00% of Swift online submissions for Word Subsets.

func char_counts(_ str: String) -> [Character: Int] {
    var counts: [Character: Int] = [:]

    for c in str {
        if let current_count = counts[c] {
            counts[c] = current_count + 1
        } else {
            counts[c] = 1
        }
    }

    return counts
}

func all_required_counts(_ subsets: [String]) -> [Character: Int] {
    var all_counts: [Character: Int] = [:]

    for subset in subsets {
        let counts = char_counts(subset)
        for (ch, count) in counts {
            if let all_count = all_counts[ch] {
                all_counts[ch] = max(all_count, count)
            } else {
                all_counts[ch] = count
            }
        }
    }

    return all_counts
}

func not_less_than_required(_ s: String, required_counts: [Character: Int]) -> Bool {
    let tested_dict = char_counts(s)

    return required_counts.allSatisfy({ char, required_count in
        if let count = tested_dict[char] {
            return count >= required_count
        } else {
            return false
        }
    })
}

class Solution {
    func wordSubsets(_ A: [String], _ B: [String]) -> [String] {
        let required_counts = all_required_counts(B)
        return A.filter({ x in not_less_than_required(x, required_counts: required_counts) })
    }
}
