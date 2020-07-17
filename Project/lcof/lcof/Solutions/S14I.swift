//
//  S14I.swift
//  lcof
//

class S14I {
    func cuttingRope(_ n: Int) -> Int {
        var dp = Array(repeating: 1, count: n + 1)
        for i in 2..<n {
            for j in i...n {
                dp[j] = max(dp[j], dp[j - i] * i)
            }
        }

        return dp[n]
    }
}
