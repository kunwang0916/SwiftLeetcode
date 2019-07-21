//
//  Hard780.swift
//  SwiftLeetcode
//
//  Created by roosky on 7/21/19.
//  Copyright © 2019 K W. All rights reserved.
//

/**
 780. Reaching Points
 https://leetcode.com/problems/reaching-points/
 time: O(max(tx, ty))
 space: O(1)
**/
import UIKit

class Hard780: NSObject {
    func reachingPoints(_ sx: Int, _ sy: Int, _ tx: Int, _ ty: Int) -> Bool {
        return backward(sx, sy, tx, ty)
    }
    
    // time: O(2^(tx + ty))
    // space: O(2^(tx + ty))
    private func dfs(_ x: Int, _ y: Int, _ tx: Int, _ ty: Int) -> Bool {
        if x == tx && y == ty {
            return true
        }
        
        if x > tx || y > ty {
            return false
        }
        
        return dfs(x, (x+y), tx, ty) || dfs(x+y, y, tx, ty)
    }
    
    // time: O(max(tx, ty))
    // space: O(1)
    private func backward(_ sx: Int, _ sy: Int, _ tx: Int, _ ty: Int) -> Bool {
        var cx = tx
        var cy = ty
        
        while cx >= sx && cy >= sy {
            if cx == sx && cy == sy {
                return true
            }
            
            if cx > cy {
                cx -= cy
            } else {
                cy -= cx
            }
        }
        return false
    }
    
    // time:(log(max(tx, ty)))
    // space: O(1)
    private func fastBackward(_ sx: Int, _ sy: Int, _ tx: Int, _ ty: Int) -> Bool {
        var cx = tx
        var cy = ty
        
        while cx >= sx && cy >= sy {
            if cx == cy {
                break
            }
            
            if cx > cy {
                if cy > sy {
                    cx %= cy
                } else {
                    return (cx - sx) % cy == 0
                }
            } else {
                if cx > sx {
                    cy %= cx
                } else {
                    return (cy - sy) % cx == 0
                }
            }
        }
        
        return cx == sx && cy == sy
    }
}
