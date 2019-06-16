//
//  Hard336.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/16/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 336. Palindrome Pairs
 https://leetcode.com/problems/palindrome-pairs/
 time: O(N * k^2)
 space: O(N)
 **/

import UIKit

public class Hard336: NSObject {
    
    func isPalindrome(_ word: String) -> Bool {
        var l = 0
        var r = word.count - 1
        var wordArray = Array(word)
        while l < r {
            if wordArray[l] != wordArray[r] {
                return false
            }
            l += 1
            r -= 1
        }
        
        return true
    }
    
    public func palindromePairs(_ words: [String]) -> [[Int]] {
        return hashMap(words)
    }
    
    
    /**
     time: O(N* K^2), N is length of words, k is ave length of word
     space: O(N)
     **/
    func hashMap(_ words: [String]) -> [[Int]] {
        var result:[[Int]] = []
        var wordMap:[String: Int] = [:]
        
        for i in 0..<words.count {
            wordMap[words[i]] = i
        }
        
        for i in 0..<words.count {
            // use array for easier sub_str
            let wArray = Array(words[i])
            for j in 0...wArray.count {
                // key point: sub_str range
                let prefix = String(wArray[0..<j])
                let suffix = String(wArray[j..<wArray.count])
                if isPalindrome(prefix) {
                    // key point: reverse
                    if let pairIndex = wordMap[String(suffix.reversed())] {
                        if pairIndex != i {
                            // key point: order
                            result.append([pairIndex, i])
                        }
                    }
                }
                
                // key point: suffix should not be empty
                if isPalindrome(suffix)  && !suffix.isEmpty {
                    // key point: reverse
                    if let pairIndex = wordMap[String(prefix.reversed())] {
                        if pairIndex != i  {
                            // key point: order
                            result.append([i, pairIndex])
                        }
                    }
                }
            }
        }
        
        return result
    }
    
    /**
     time: O(N^2 * K), N is length of words, k is ave length of word
     space: O(1)
     error: Time Limit Exceeded
     **/
    func bruteForce(_ words: [String]) -> [[Int]] {
        var result:[[Int]] = []
        
        for i in 0..<words.count {
            for j in 0..<words.count {
                if i == j {
                    continue
                }
                let c = words[i] + words[j]
                if self.isPalindrome(c) {
                    result.append([i, j])
                }
            }
        }
        
        return result
    }
}
