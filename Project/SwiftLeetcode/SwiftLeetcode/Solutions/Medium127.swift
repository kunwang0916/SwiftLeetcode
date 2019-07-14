//
//  Medium127.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/13/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

/**
 127. Word Ladder
 https://leetcode.com/problems/word-ladder/
 time: O(N * L)
 space: O(N * L)
 **/


public class Medium127: NSObject {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        return bidirectionalBFS(beginWord, endWord, wordList)
    }
    
    private func bidirectionalBFS(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        var wordSet = Set<String>()
        for word in wordList {
            wordSet.insert(word)
        }
        
        if !wordSet.contains(endWord) {
            return 0
        }
        
        // use set to reduce time 
        var queue1 = Set<String>()
        var queue2 = Set<String>()
        
        queue1.insert(beginWord)
        queue2.insert(endWord)
        
        var step = 0
        while !queue1.isEmpty && !queue2.isEmpty {
            step += 1
            if queue1.count > queue2.count {
                //so we increase the shorte part
                (queue1, queue2) = (queue2, queue1)
            }
            
            var newQueue = Set<String>()
            for word in queue1 {
                let candidates = getNextStepCandidates(word)
                for can in candidates {
                    if queue2.contains(can) {
                        return step + 1
                    }
                    
                    if wordSet.contains(can) {
                        newQueue.insert(can)
                        wordSet.remove(can)
                    }
                }
            }
            
            queue1 = newQueue
        }
        
        return 0
    }
    
    private func bfs(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        var wordSet = Set<String>()
        for word in wordList {
            wordSet.insert(word)
        }
        
        if !wordSet.contains(endWord) {
            return 0
        }
        
        var queue = [String]()
        queue.append(beginWord)
        var step = 0
        while !queue.isEmpty {
            step += 1
            var newQueue = [String]()
            for word in queue {
                let candidates = getNextStepCandidates(word)
                for can in candidates {
                    if can == endWord {
                        return step + 1
                    }
                    
                    if wordSet.contains(can) {
                        newQueue.append(can)
                        wordSet.remove(can)
                    }
                }
            }
            
            queue = newQueue
        }
        
        return 0
    }
    
    private func getNextStepCandidates(_ word: String)  -> [String] {
        let letters = "abcdefghijklmnopqrstuvwxyz"
        
        var result = [String]()
        var wArray = Array(word)
        for i in 0..<wArray.count {
            let originalC = wArray[i]
            for c in letters {
                wArray[i] = c
                let newWord = String(wArray)
                result.append(newWord)
            }
            wArray[i] = originalC
        }
        
        return result
    }
}
