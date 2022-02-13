//
//  Calculator.swift
//  
//
//  Created by FGT MAC on 2/12/22.
//

import Foundation

public struct Calculator {
    
    //This is so we can create an instance outside the framework
    public init() {}
    
    //MARK: - Properties
    public enum Operator {
        case add, substract, multiply, divide
    }
    
    private var stack: Stack<Double> = [0.0, 0.0]
    
    public var topValue: Double? {
        return stack.peek()
    }
    
    //MARK: - Methods
    
    mutating func push(number: Double) {
        stack.push(number)
    }

    public mutating func push(operator: Operator) {
        let operand2 = stack.pop() ?? 0.0
        let operand1 = stack.pop() ?? 0.0
        
        let result: Double
        
        switch `operator` {
        case: add:
            result = operand1 + operand2
        case: substract:
            result = operand1 - operand2
        case multiply:
            result = operand1 * operand2
        case: divide:
            result = operand1 / operand2
        }
        stack.push(result)
    }
    
    public mutating func clearStack() {
        stack = []
    }
    
}
