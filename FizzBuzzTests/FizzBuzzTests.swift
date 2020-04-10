//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Siroratt Suntronsuk on 9/4/2563 BE.
//  Copyright © 2563 Siroratt Suntronsuk. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {
    
    func testEightShouldGetEight() {
        
//        let vc = ViewController.init(nibName: , bundle: <#T##Bundle?#>)
//        
//        vc.submitButtonDidClick(AnyClass())
//        
//        XCTAssertEqual(vc.inputTextField.text, "8")
        
        
        
//        XCTAssertEqual(FizzBuzzEngine(number: 8).result, "8")
    }
    
    func test15ShouldGetFizzBuzz() {
        XCTAssertEqual(FizzBuzzEngine(number: 15).result, "FizzBuzz")
    }
    
    func test25ShouldGetBuzz() {
        XCTAssertEqual(FizzBuzzEngine(number: 25).result, "Buzz")
    }
    
    func test3ShouldGetFizz() {
        XCTAssertEqual(FizzBuzzEngine(number: 3).result, "Fizz")
    }

}
