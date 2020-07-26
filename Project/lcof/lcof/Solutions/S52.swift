//
//  S52.swift
//  lcof
//

class S52 {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var p1 = headA
        var p2 = headB

        while p1 !== p2 {
            if p1 == nil {
                p1 = headB
            } else {
                p1 = p1?.next
            }

            if p2 == nil  {
                p2 = headA
            } else {
                p2 = p2?.next
            }
        }

        return p1
    }

}
