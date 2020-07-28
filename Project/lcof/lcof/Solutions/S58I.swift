//
//  S58I.swift
//  lcof
//
class S58I {
    func reverseWords(_ s: String) -> String {
        return s.split(separator: " ")
            .filter{ !$0.isEmpty }
            .reversed()
            .joined(separator: " ")
    }
}
