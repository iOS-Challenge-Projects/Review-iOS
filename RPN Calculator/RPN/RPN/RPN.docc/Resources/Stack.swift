//
//  Stack.swift
//  RPN
//
//  Created by FGT MAC on 2/12/22.
//

import Foundation

struct Stack<T> : ExpressibleByArrayLiteral {
    typealias ArrayLiteralElement = T
    
    private(set) var items: [T]
    
    init(arrayLiteralElement elements: ArrayLiteralElement...){
        items = elements
    }
    
    mutating func push(_ value: T) {
        items.append(value)
    }
    
    mutating func pop() -> T? {
        return items.popLast()
    }
    
    func peek() -> T? {
        return items.last
    }
}
