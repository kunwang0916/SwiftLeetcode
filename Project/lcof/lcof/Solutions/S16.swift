//
//  S16.swift
//  lcof
//

class S16 {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n < 0 {
            return 1.0 / myPow(x, -n)
        }
        
        if n == 0 {
            return 1
        }

        if n == 1 {
            return x
        }

        let h = myPow(x, n / 2)
        if n % 2 == 1 {
            return h * h * x
        } else {
            return h * h
        }
    }
}
