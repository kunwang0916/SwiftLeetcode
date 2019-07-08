//
//  TextJustification.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/3/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public class TextJustification: NSObject {
    public func prettyPrint(_ texts:[String], _ maxWidth: Int) -> [String] {
        let lineSeperator = buidLineSeperator(maxWidth)
        var result = [String]()
        result.append(lineSeperator)
        for text in texts {
            let builtLines = buildLines(text.components(separatedBy: " "), maxWidth, .Right)
            for line in builtLines {
                result.append("|" + line + "|")
            }
            result.append(lineSeperator)
        }
        return result
    }
    
    enum AlignType {
        case Left
        case Right
    }
    
    private func buildLines(_ words: [String], _ maxWidth: Int, _ alignType: AlignType) -> [String] {
        var result = [String]()
        var curLineStr = ""
        var spaceNum = 0
        for word in words {
            if curLineStr.count + word.count + spaceNum > maxWidth {
                result.append(addSpaces(curLineStr, maxWidth, alignType))
                curLineStr = ""
                spaceNum = 0
            }
            
            if curLineStr.count > 0 {
                curLineStr += " "
                spaceNum += 1
            }
            
            curLineStr += word
        }
        
        if curLineStr.count > 0 {
            result.append(addSpaces(curLineStr, maxWidth, alignType))
        }
        
        return result
    }
    
    private func addSpaces(_ str: String, _ lineWidth: Int, _ alignType: AlignType) -> String {
        let spaces = String(repeating: " ", count: lineWidth - str.count)
        if alignType == .Left {
            return str + spaces
        }
        
        return spaces + str
    }
    
    
    private func buidLineSeperator(_ width: Int) -> String {
        return "+" +  String(repeating: "-", count: width) + "+"
    }
}
