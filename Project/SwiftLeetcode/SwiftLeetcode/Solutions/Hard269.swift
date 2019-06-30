//
//  Hard269.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/29/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 269. Alien Dictionary
 https://leetcode.com/problems/alien-dictionary/
 time: O(V + E)
 space: O(V + E)
 top sort
 **/
import UIKit

class Hard269: NSObject {
    func alienOrder(_ words: [String]) -> String {
        var adjacencyMap = [Character: Set<Character>]()
        var indegreeMap = [Character: Int]()
        
        // init indegree map
        for w in words {
            for c in w {
                indegreeMap[c] = 0
            }
        }
        
        // map the indegreeMap and adjacencyMap
        for i in 0..<words.count-1 {
            let wordArray = Array(words[i])
            let nextWordArray = Array(words[i+1])
            
            for j in 0..<min(wordArray.count, nextWordArray.count) {
                let curChar = wordArray[j]
                let nextChar = nextWordArray[j]
                
                if curChar == nextChar {
                    continue
                }
                
                var adjacencies = adjacencyMap[curChar] ?? Set<Character>()
                
                // key point, avoid dup count
                if !adjacencies.contains(nextChar) {
                    adjacencies.insert(nextChar)
                    adjacencyMap[curChar] = adjacencies
                    indegreeMap[nextChar] = (indegreeMap[nextChar] ?? 0) + 1
                }
                
                break
            }
        }
        
        var queue = [Character]()
        
        for (key, val) in indegreeMap {
            if val == 0 {
                queue.append(key)
            }
        }
        
        var result = ""
        
        while queue.count > 0 {
            let curChar = queue.removeFirst()
            result += String(curChar)
            guard let adjacencies = adjacencyMap[curChar] else { continue }
            
            for ch in adjacencies {
                indegreeMap[ch] = indegreeMap[ch]! - 1
                if indegreeMap[ch] == 0 {
                    queue.append(ch)
                }
            }
        }
        
        if result.count == indegreeMap.count {
            return result
        }
        
        return ""
    }
}
