//
//  S08.swift
//  lcof
//

class S09 {
    var stack1 = [Int]()
    var stack2 = [Int]()

    init() {

    }
    
    func appendTail(_ value: Int) {
        stack1.append(value)
    }
    
    func deleteHead() -> Int {
        if stack2.count == 0 {
            while let t = stack1.popLast() {
                stack2.append(t)
            }
        }
        if let t = stack2.popLast() {
            return t
        }
        return -1
    }
}
