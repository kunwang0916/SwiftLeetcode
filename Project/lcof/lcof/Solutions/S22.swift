//
//  S22.swift
//  lcof
//

class S22 {
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        var fp = head!
        var sp = head!
        var c = 1
        while c < k {
            c += 1
            if let next = fp.next {
                fp = next
            } else {
                return nil
            }
        }

        while let fn = fp.next, let sn = sp.next {
            fp = fn
            sp = sn
        }

        return sp
    }
}
