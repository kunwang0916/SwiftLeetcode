//
//  S10II.swift
//  lcof
//

import Foundation

class S10II {
    func numWays(_ n: Int) -> Int {
        if n < 2 {
            return 1
        }

        var v1 = 1
        var v2 = 1
        for _ in 2...n {
            v2 = v1 + v2
            v1 = v2 - v1
            v2 %= 1000000007
        }

        return v2
    }
}
