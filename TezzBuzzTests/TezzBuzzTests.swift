//
//  TezzBuzzTests.swift
//  TezzBuzzTests
//
//  Created by Achmad Fathullah on 14/04/22.
//

import XCTest
@testable import TezzBuzz

class FizzBuzzMapper {
    func parseInput(input :Int) -> String {
        switch true{
        case input % 15 == 0 : return "FizzBuzz"
        case input % 3 == 0 : return "Fizz"
        case input % 5 == 0 : return "Buzz"
        default : return "\(input)"
        }
    }
}

class TezzBuzzTests: XCTestCase {
    
    func test_parseNumber_withInputThree_shouldReturnFizz(){
        let sut = makeSUT()
        let expected = sut.parseInput(input: 3)
        XCTAssertEqual(expected, "Fizz")
    }
    
    func test_parseNumber_withInputFive_shouldReturnBuzz(){
        let sut = makeSUT()
        let expected = sut.parseInput(input: 5)
        XCTAssertEqual(expected, "Buzz")
    }
    
    func test_parseNumber_withInputFiveTeen_shouldReturnFizzBuzz(){
        let sut = makeSUT()
        let expected = sut.parseInput(input: 15)
        XCTAssertEqual(expected, "FizzBuzz")
    }
    
    func test_parseNumber_withInputOneUntilOneHundred_shouldContains27Fizz(){
        let sut = makeSUT()
        var exactNumber = 0
        for number in 1...100{
            if sut.parseInput(input: number) == "Fizz"{
                exactNumber += 1
            }
        }
        XCTAssertEqual(exactNumber, 27)
    }
    
    func test_parseNumber_withInputOneUntilOneHundred_shouldContains14Buzz(){
        let sut = makeSUT()
        var exactNumber = 0
        for number in 1...100{
            if sut.parseInput(input: number) == "Buzz"{
                exactNumber += 1
            }
        }
        XCTAssertEqual(exactNumber, 14)
    }
    
    func test_parseNumber_withInputOneUntilOneHundred_shouldContains6FizzBuzz(){
        let sut = makeSUT()
        var exactNumber = 0
        for number in 1...100{
            if sut.parseInput(input: number) == "FizzBuzz"{
                exactNumber += 1
            }
        }
        XCTAssertEqual(exactNumber, 6)
    }
    // MARK : Helper
    func makeSUT() -> FizzBuzzMapper {
        return FizzBuzzMapper()
    }
    
}
