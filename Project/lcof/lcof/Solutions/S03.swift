//
//  s03.swift
//  lcof
//

import Foundation

class S03 {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var visited = Set<Int>()
        for n in nums {
            if visited.contains(n) {
                return n
            }
            visited.insert(n)
        }

        return -1
    }
}
