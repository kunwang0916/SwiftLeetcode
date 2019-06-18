//
//  Medium347.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/17/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 347. Top K Frequent Elements
 https://leetcode.com/problems/top-k-frequent-elements/
 time: O(N)
 space: O(N)
 **/

import UIKit

public class Medium347: NSObject {
    public func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        return partitionSelect(nums, k)
    }
    
    // naive way: O(NlogN)
    // time: 108 ms
    private func normalSort(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
        for n in nums {
            map[n] = (map[n] ?? 0) + 1
        }
        var elements = Array(map.keys)
        elements.sort{ map[$0]! > map[$1]! }
        
        return Array(elements.prefix(k))
    }
    
    // k Select with partion, O(N), worst case: O(n^2)
    // time: 100 ms
    private func partitionSelect(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
        for n in nums {
            map[n] = (map[n] ?? 0) + 1
        }
        
        var elements = Array(map.keys)
        self.kSelect(&elements, &map, k, 0, elements.count - 1)
        return Array(elements.prefix(k))
    }
    
    private func kSelect(_ elements: inout [Int], _ map: inout [Int: Int], _ k: Int, _ start: Int, _ end: Int) {
        if k <= 0 || k > (end - start + 1) {
            return
        }
        
        let index = partition(&elements, &map, start, end)
        let diff = index - start + 1
        if diff == k {
            // top k sorted
            return
        } else if diff > k {
            kSelect(&elements, &map, k, start, index - 1)
        } else  {
            kSelect(&elements, &map, k - diff, index + 1, end)
        }
    }
    
    private func partition(_ elements: inout [Int], _ map: inout [Int: Int], _ start: Int, _ end: Int) -> Int {
        let pivot = map[elements[end]]!
        var i = start
        for j in start..<end {
            if map[elements[j]]! > pivot {
                elements.swapAt(j, i)
                i += 1
            }
        }
        elements.swapAt(i, end)
        return i
    }
    
}
