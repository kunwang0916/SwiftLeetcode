//
//  Hard23.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/7/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 23. Merge k Sorted Lists
 https://leetcode.com/problems/merge-k-sorted-lists/
 time: O(NLogK) N is total nodes, K is num of list
 space: O(1)
 **/

import UIKit

class Hard23: NSObject {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.isEmpty {
            return nil
        }
        
        if lists.count == 1 {
            return lists[0]
        }
        
        let mid = lists.count / 2
        let l1 = mergeKLists(Array(lists[0..<mid]))
        let l2 = mergeKLists(Array(lists[mid...]))
        return merge2List(l1, l2)
    }
    
    private func merge2List(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard let list1 = list1 else { return list2 }
        guard let list2 = list2 else { return list1 }
        
        if list1.val < list2.val {
            list1.next = merge2List(list1.next, list2)
            return list1
        } else {
            list2.next = merge2List(list1, list2.next)
            return list2
        }
    }
}
