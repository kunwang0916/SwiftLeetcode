//
//  S58II.swift
//  lcof
//
class S58II {
    func reverseLeftWords(_ s: String, _ n: Int) -> String {
        return String(s.dropFirst(n) + s.prefix(n))
    }
}
