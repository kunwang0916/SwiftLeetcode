//
//  S25.swift
//  lcof
//
class S25 {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let h = ListNode(-1)
        var c = h
        var l1 = l1
        var l2 = l2
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                (c.next, l1) = (l1!, l1!.next)
            } else {
                (c.next, l2) = (l2!, l2!.next)
            }
            c = c.next!
        }

        if let l = l1 {
            c.next = l
        } else {
            c.next = l2
        }

        return h.next
    }
}
