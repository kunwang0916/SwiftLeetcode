//
//  Easy206.swift
//  SwiftLeetcode
//
//  Created by roosky on 1/12/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 https://leetcode.com/problems/reverse-linked-list/
 206. Reverse Linked List
 **/

import UIKit

class Easy206: NSObject {
    func reverseList(_ head: ListNode?) -> ListNode? {
        return iterative(head)
    }
    
    // space: O(1)
    // time: O(N)
    func iterative(_ head: ListNode?) -> ListNode? {
        var pre:ListNode?
        var curr = head
        while curr != nil {
            let next = curr!.next
            curr!.next = pre
            pre = curr!
            curr = next
        }
        return pre
    }
    
    // space: O(N), stack queue of recursion
    // time: O(N)
    func recurisive(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let node = recurisive(head?.next)
        head?.next?.next = head
        head?.next = nil
        return node
    }
}
