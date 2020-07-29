//
//  S66.swift
//  lcof
//

class S66 {
    func constructArr(_ a: [Int]) -> [Int] {
        let n = a.count

        if n < 2 {
            return a
        }

        var b = Array(repeating: 1, count: n)
        for i in 1..<n {
            b[i] = b[i - 1] * a[i - 1]
        }

        var tmp = 1
        for i in (0..<n-1).reversed() {
            tmp *= a[i + 1]
            b[i] *= tmp
        }

        return b
    }
}
