//
//  S62.swift
//  lcof
//
class S62 {
    func lastRemaining(_ n: Int, _ m: Int) -> Int {
        var list = [Int]()
        for i in 0..<n {
            list.append(i)
        }

        var di = 0
        while list.count > 1 {
            di = (di + m - 1) % list.count
            list.remove(at: di)
        }

        return list[0]
    }
}
