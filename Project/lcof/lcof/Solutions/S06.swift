//
//  S06.swift
//  lcof
//

import Foundation

class S06 {
    func reversePrint(_ head: ListNode?) -> [Int] {
        guard let h = head else {
            return []
        }
        var t = reversePrint(h.next)
        t.append(h.val)
        return t
    }
}
