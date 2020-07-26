//
//  S50.swift
//  lcof
//

class S50 {
    func firstUniqChar(_ s: String) -> Character {
        var map = [Character: Bool]()
        for c in s {
            if map[c] == nil {
                map[c] = true
            } else {
                map[c] = false
            }
        }

        for c in s {
            if map[c]! {
                return c
            }
        }
        return " "
    }
}
