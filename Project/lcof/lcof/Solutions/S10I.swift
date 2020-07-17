//
//  S10I.swift
//  lcof
//

class S10I {
    func fib(_ n: Int) -> Int {
        if n < 2 {
            return n
        }
        var v1 = 0
        var v2 = 1

        for _ in 2...n {
            v2 = v1 + v2
            v1 = v2 - v1
            v2 %= 1000000007
        }

        return v2
    }
}
