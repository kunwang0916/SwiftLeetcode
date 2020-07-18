//
//  S24.swift
//  lcof
//
class S24 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard var cur = head else {
            return nil
        }

        var pre: ListNode? = nil
        while let next = cur.next {
            cur.next = pre
            pre = cur
            cur = next
        }

        cur.next = pre

        return cur
    }
}
