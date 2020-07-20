//
//  S30.swift
//  lcof
//
class MinStack {
    var minArray = [Int]()
    var array = [Int]()
    /** initialize your data structure here. */
    init() {

    }
    
    func push(_ x: Int) {
        array.append(x)
        guard let last = minArray.last else {
            minArray.append(x)
            return
        }
        minArray.append(Swift.min(x, last))
    }
    
    func pop() {
        array.removeLast()
        minArray.removeLast()
    }
    
    func top() -> Int {
        return array.last!
    }
    
    func min() -> Int {
        return minArray.last!
    }
}
