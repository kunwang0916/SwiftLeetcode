//
//  S18.swift
//  lcof
//

class S18 {
    func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
        guard let head = head else {
            return nil
        }
        
        if head.val == val {
            return head.next
        }

        var p = head
        while let next = p.next {
            if next.val == val {
                p.next = next.next
                break
            }
            p = next
        }

        return head
    }
}
