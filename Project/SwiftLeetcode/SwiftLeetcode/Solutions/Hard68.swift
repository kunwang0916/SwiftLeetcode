//
//  Hard68.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/1/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 68. Text Justification
 https://leetcode.com/problems/text-justification/
 time : O(N)
 space: O(N)
 too many details to handle
 **/

import UIKit

public class Hard68: NSObject {
    
    private func buildLine(_ words: [String], _ totalWordLength: Int, _ maxWidth: Int, _ isLastLine: Bool) -> String {
        var str = ""
        var aveSpaceBucket = " "
        var extraSpaceBucket = " "
        var extraSpaceBucketNum = 0
        
        if words.count > 1 && !isLastLine  {
            let aveSpaceNum = (maxWidth - totalWordLength) / (words.count - 1)
            extraSpaceBucketNum = (maxWidth - totalWordLength) % (words.count - 1)
            aveSpaceBucket = String(repeating: " ", count: aveSpaceNum)
            extraSpaceBucket = aveSpaceBucket + " "
        }
        
        for i in 0..<words.count {
            str += words[i]
            if i < words.count - 1 {
                if i < extraSpaceBucketNum {
                    str += extraSpaceBucket
                } else {
                    str += aveSpaceBucket
                }
            }
        }
        
        if str.count < maxWidth {
            str += String(repeating: " ", count:maxWidth - str.count)
        }
        
        return str
    }
    
    public func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var result = [String]()
        
        var curWordLength = 0
        var curLineWords = [String]()
        for i in 0..<words.count {
            let word = words[i]
            if (curWordLength + word.count + curLineWords.count > maxWidth) {
                result.append(buildLine(curLineWords, curWordLength, maxWidth, false))
                curLineWords = []
                curWordLength = 0
            }
            curLineWords.append(word)
            curWordLength += word.count
        }
        
        if !curLineWords.isEmpty {
            result.append(buildLine(curLineWords, curWordLength, maxWidth, true))
        }
        
        return result
    }
}
