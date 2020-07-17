//
//  ListNode.swift
//  lcof
//

import Foundation

/**
* Definition for singly-linked list.
**/
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public static func withArray(_ array: [Int]) -> ListNode? {
        if array.isEmpty {
            return nil
        }
        
        let n = ListNode(array[0])
        n.next = withArray(Array(array[1..<array.count]))
        
        return n
    }
}

extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        guard lhs.val == rhs.val else {
            return false
        }
        
        if lhs.next == nil && rhs.next == nil {
            return true
        }
        
        guard let l = lhs.next, let r = rhs.next else {
            return false
        }
        
        return l == r
    }
}
