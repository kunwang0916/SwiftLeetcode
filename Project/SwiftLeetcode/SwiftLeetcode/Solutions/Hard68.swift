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
    public func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var lines = [[String]]()
        var wordWidthOfLines = [Int]()
        
        var curRow = 0
        var curWordLength = 0
        var curLineWordCount = 0
        for i in 0..<words.count {
            let word = words[i]
            if (curWordLength + word.count + curLineWordCount > maxWidth) {
                curRow += 1
                wordWidthOfLines.append(curWordLength);
                curWordLength = 0
                curLineWordCount = 0
            }
            curLineWordCount += 1
            curWordLength += word.count
            
            if curRow > lines.count - 1 {
                lines.append([])
            }
            
            lines[curRow].append(word)
        }
        
        if (curLineWordCount > 0) {
            wordWidthOfLines.append(curWordLength);
        }
        
        var result = [String]()
        for i in 0..<lines.count {
            let line = lines[i]
            let totalSpace = maxWidth - wordWidthOfLines[i]
            let spaceBuckets = line.count - 1
            let aveSpaceNum = spaceBuckets > 0 ? totalSpace / spaceBuckets : 0
            let moreSpaceBucketNum = spaceBuckets > 0 ? totalSpace % spaceBuckets : 0
            let aveSpaceBucket = String(repeating: " ", count: aveSpaceNum)
            let moreSpaceBucket = aveSpaceBucket + " "
            
            var lineString = ""
            for j in 0..<line.count {
                lineString += line[j]
                
                if j == line.count - 1 {
                    continue
                }
                if i == lines.count - 1 {
                    // last line
                    lineString += " "
                } else {
                    if j < moreSpaceBucketNum {
                        lineString += moreSpaceBucket
                    } else {
                        lineString += aveSpaceBucket
                    }
                }
            }
            
            if maxWidth - lineString.count > 0 {
                lineString += String(repeating: " ", count: maxWidth - lineString.count)
            }
            
            result.append(lineString)
        }
        return result
        
    }
}
