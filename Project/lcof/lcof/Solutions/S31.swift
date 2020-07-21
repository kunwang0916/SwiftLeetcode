//
//  S31.swift
//  lcof
//
class S31 {
    // simulate the push and pop operation, make sure the stack could be empty at the end
    // O(N) for space and time
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var stack = [Int]()
        var popIndex = 0
        for n in pushed {
            stack.append(n)
            while stack.count > 0 && stack.last == popped[popIndex] {
                popIndex += 1
                stack.removeLast()
            }
        }

        return stack.isEmpty
    }
}
