//
//  Medium208.swift
//  SwiftLeetcode
//
//  Created by roosky on 2/21/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 208. Implement Trie (Prefix Tree)
 https://leetcode.com/problems/implement-trie-prefix-tree/
 **/
import UIKit

public class Trie {
    var isWord: Bool = false
    var char: Character
    var childerns = [Character: Trie]()
    
    /** Initialize your data structure here. */
    init() {
        self.char = Character("_")
    }
    
    /** Inserts a word into the trie. */
    // time: O(M), M is length of the word
    // space: O(M)
    func insert(_ word: String) {
        if word.count == 0 {
            return
        }
        
        var curNode = self;
        for c in word {
            var nextNode = curNode.childerns[c]
            if nextNode == nil {
                nextNode = Trie()
                nextNode!.char = c
                curNode.childerns[c] = nextNode
            }
            curNode = nextNode!
        }
        curNode.isWord = true
    }
    
    /** Returns if the word is in the trie. */
    // time: O(M), M is length of the word
    // space: O(1)
    func search(_ word: String) -> Bool {
        if word.count == 0 {
            return false
        }
        
        var curNode = self;
        for c in word {
            if let nextNode = curNode.childerns[c] {
                curNode = nextNode
            } else {
                return false;
            }
        }
        
        return curNode.isWord
    }
    
    
    /** Returns if there is any word in the trie that starts with the given prefix. */
    // time: O(M), M is length of the word
    // space: O(1)
    func startsWith(_ prefix: String) -> Bool {
        if prefix.count == 0 {
            return false
        }
        
        var curNode = self;
        for c in prefix {
            if let nextNode = curNode.childerns[c] {
                curNode = nextNode
            } else {
                return false;
            }
        }
        
        return true
    }

    // return all the word match the prefix str
    // time: o(N) n is nodes
    func findWords(_ str: String) -> [String] {
        var result = [String]()
        if str.count == 0 {
            return result
        }
        var node = self
        for c in str {
            if let nextNode = node.childerns[c] {
                node = nextNode
            } else {
                return result
            }
        }
        
        let suffix = node.listOfSuffix()
        for suf in suffix {
            result.append(String(Array(str)[0..<(str.count-1)]) + suf)
        }
        
        return result
    }

    func listOfSuffix() -> [String] {
        var result = [String]()
        // self.char n
        if self.isWord  {
            result.append(String(self.char))
        }
        
        for chil in self.childerns.values {
            let sufixList = chil.listOfSuffix()
            for suf in sufixList {
                result.append(String(self.char) + suf)
            }
        }
        
        return result
    }
}

//// snap
//var tries = TrieNode("")
//tries.insert("snap")
