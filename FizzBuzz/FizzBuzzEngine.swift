//
//  Calculator.swift
//  FizzBuzz
//
//  Created by Siroratt Suntronsuk on 9/4/2563 BE.
//  Copyright © 2563 Siroratt Suntronsuk. All rights reserved.
//
//
struct Calculator {
    var condition = { (number: Int) -> (String) in
        return "AnnJA \(number)"
    }
}

struct FizzBuzzEngine {
    let number: Int
    
    var result: String {
        var result = ""
        if number % 3 == 0 {
            result += "Fizz"
        }
        
        if number % 5 == 0 {
            result += "Buzz"
        }
        
        if result.isEmpty {
            result = "\(number)"
        }
        return result
    }
}
