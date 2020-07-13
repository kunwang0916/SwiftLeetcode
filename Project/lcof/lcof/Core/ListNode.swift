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
