//
//  S48.swift
//  lcof
//

class S48 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count < 2 {
            return s.count
        }

        let array = Array(s)
        var indexMap = [Character: Int]()
        var result = 0
        var i = 0
        for j in 0..<array.count {
            let c = array[j]
            if let index = indexMap[c] {
                i = max(i, index)
            }
            indexMap[c] = j
            result = max(result, j - i)
        }
        return result
    }
}
