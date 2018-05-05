//
//  Medium19.swift
//  SwiftLeetcode
//
//  Created by roosky on 5/4/18.
//  Copyright © 2018 K W. All rights reserved.
//

/**
 19. Remove Nth Node From End of List
 https://leetcode.com/problems/remove-nth-node-from-end-of-list/description/
 **/
import UIKit

public class Medium19: NSObject {
    // double pointer. time:O(n), space:O(1)
    public class func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var count = 0
        let dummy = ListNode(0)
        dummy.next = head
        var fastPointer:ListNode = dummy
        var slowPointer:ListNode = dummy
        while count < n {
            count += 1
            fastPointer = fastPointer.next!
        }
        
        while fastPointer.next != nil {
            fastPointer = fastPointer.next!
            slowPointer = slowPointer.next!
        }
        
        slowPointer.next = slowPointer.next?.next
        
        return dummy.next
    }
}
