//
//  S17.swift
//  lcof
//

class S17 {
    func printNumbers(_ n: Int) -> [Int] {
        if n == 0 {
            return []
        }

        var range = 1
        for _ in 0..<n {
            range *= 10
        }
        range -= 1

        var result = Array(repeating: 0, count: range)
        for i in 0..<range {
            result[i] = i + 1
        }

        return result
    }
}
