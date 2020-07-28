//
//  S63.swift
//  lcof
//
class S63 {
    func maxProfit(_ prices: [Int]) -> Int {
        var result = 0
        var cost = Int.max
        for p in prices {
            cost = min(cost, p)
            result = max(result, p - cost)
        }

        return result
    }
}
