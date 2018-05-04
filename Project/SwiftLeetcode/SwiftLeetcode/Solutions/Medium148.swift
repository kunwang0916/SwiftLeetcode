//
//  Medium148.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/3/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 148. Sort List
 https://leetcode.com/problems/sort-list/description/
 **/

import UIKit

public class Medium148: NSObject {
    // merge sort: time: O(nlogn)
    public class func sortList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        // find the middle
        let m = self.midNode(head)
        // divide to 2 sub list
        let next = m?.next
        m?.next = nil
        
        var newHead = self.sortList(head)
        var newNext = self.sortList(next)
        return self.merge(&newHead, &newNext)
    }
    
    class func merge(_ a: inout ListNode?, _ b: inout ListNode?) -> ListNode? {
        let temp = ListNode(0)
        var cur = temp
        while a != nil && b != nil {
            if a!.val <= b!.val {
                cur.next = a
                a = a?.next
            } else {
                cur.next = b
                b = b?.next
            }
            cur = cur.next!
        }
        if a == nil {
            cur.next = b
        } else {
            cur.next = a
        }
        return temp.next
    }
    
    class func midNode(_ head: ListNode?) -> ListNode? {
        var s = head
        var f = head
        while f?.next != nil && f?.next?.next != nil {
            s = s?.next
            f = f?.next?.next
        }
        return s
    }
}
