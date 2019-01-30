//
//  Medium2.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/29/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 2. Add Two Numbers
 https://leetcode.com/problems/add-two-numbers/
 time: O(N)
 space: O(1)
 **/
import UIKit

class Medium2: NSObject {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var ll1 = l1
        var ll2 = l2
        var carry = 0
        let result = ListNode(0)
        var pointer = result
        while ll1 != nil || ll2 != nil || carry != 0 {
            var sum = carry
            if let l1v = ll1?.val {
                sum += l1v
                ll1 = ll1?.next
            }
            
            if let l2v = ll2?.val {
                sum += l2v
                ll2 = ll2?.next
            }
            
            let t = ListNode(sum % 10)
            pointer.next = t
            pointer = t
            carry = sum / 10
        }
        return result.next
    }
}
