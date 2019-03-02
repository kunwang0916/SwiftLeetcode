//
//  Medium402.swift
//  SwiftLeetcode
//
//  Created by roosky on 3/2/19.
//  Copyright © 2019 K W. All rights reserved.
//
/**
 402. Remove K Digits
 https://leetcode.com/problems/remove-k-digits/
 time: O(N)
 space: O(1)
 **/
import UIKit

class Medium402: NSObject {
    func removeKdigits(_ num: String, _ k: Int) -> String {
        var countDown = k
        var array = Array(num)
        var index = 0
        while array.count > 0 && countDown > 0 {
            while index < array.count - 1 {
                if array[index] > array[index + 1] {
                    break
                }
                index += 1
            }
            
            array.remove(at:index)
            if index > 0  {
                index -= 1
            }
            
            countDown -= 1
        }
        
        while array.count > 1 && array[0] == "0" {
            array.remove(at: 0)
        }
        
        if array.count == 0 {
            return "0"
        }
        
        return String(array)
    }
}
