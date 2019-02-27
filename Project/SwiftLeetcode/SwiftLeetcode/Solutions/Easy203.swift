//
//  Easy203.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/26/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 203. Remove Linked List Elements
 https://leetcode.com/problems/remove-linked-list-elements/
 time: O(n)
 space: O(1)
 **/
import UIKit

class Easy203: NSObject {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return head
        }
        var pre: ListNode?
        let dummy = ListNode(0)
        pre = dummy
        pre?.next = head
        var cur = head
        while cur != nil {
            if cur?.val == val {
                pre?.next = cur?.next
            } else {
                pre = pre?.next
            }
            
            cur = pre?.next
        }
        return dummy.next;
    }
}
