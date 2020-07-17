//
//  S15.swift
//  lcof
//

class S15 {
    func hammingWeight(_ n: Int) -> Int {
        var n = n
        var count = 0
        while n > 0 {
            if n % 2 == 1 {
                count += 1
            }
            n /= 2
        }

        return count
    }
}
