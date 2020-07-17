//
//  S14II.swift
//  lcof
//

class S14II {
    // math magic, I have no idea why is work
    func cuttingRope(_ n: Int) -> Int {
        if n < 4 {
            return n - 1
        }
        var num = n
        var res = 1
        while num > 4 {
            res *= 3
            res %= 1000000007
            num -= 3
        }
        return (res * num % 1000000007);
    }
}
