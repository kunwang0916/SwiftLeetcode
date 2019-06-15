//
//  Encircular.swift
//  SwiftLeetcode
//
//  Created by roosky on 6/15/19.
//  Copyright © 2019 K W. All rights reserved.
//

import UIKit

public class Encircular: NSObject {
    public func doesCircleExist(commands: [String]) -> [String] {
        // Write your code here
        var result:[String] = []
        for comStr in commands {
            var turnCount = 0
            var position = [0, 0]
            for _ in 0..<4 {
                for c in comStr {
                    if c == "L" {
                        turnCount -= 1
                    } else if c == "R" {
                        turnCount += 1
                    } else {
                        switch turnCount {
                        case 0: position[1] += 1
                        case 1: position[0] += 1
                        case 2: position[1] -= 1
                        default: position[0] -= 1
                        }
                    }
                    turnCount = (turnCount + 4) % 4
                }
            }
            
            if (turnCount == 0 && position[0] == 0 && position[1] == 0)  {
                result.append("YES")
            } else {
                result.append("NO")
            }
        }
        
        return result
    }
}
