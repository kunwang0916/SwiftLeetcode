//
//  S05.swift
//  lcof
//

class S05 {
    func replaceSpace(_ s: String) -> String {
        var result = ""
        for c in s {
            if c == " " {
                result.append("%20")
            } else {
                result.append(c)
            }
        }

        return result
    }
}
