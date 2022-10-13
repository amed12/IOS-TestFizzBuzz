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

    func test_parseNumber(){
       expect(input: 1, withOutput:  "1")
        expect(input: 2, withOutput:  "2")
        expect(input: 4, withOutput:  "4")
    }
    
    func test_parseFizz(){
       expect(input: 3, withOutput:  "Fizz")
    }
    
    func test_parseBuzz(){
       expect(input: 5, withOutput:  "Buzz")
    }
    
    func test_parseFizzBuzz(){
       expect(input: 15, withOutput:  "FizzBuzz")
    }
    
    // MARK : Helper
    func makeSUT() -> FizzBuzzMapper {
        return FizzBuzzMapper()
    }
    
    func expect(input: Int, withOutput:String){
        //arange
        // SUT = System Under Test
        let sut = makeSUT()
        // act
        let output = sut.parseInput(input: input)
        // assert
        XCTAssertEqual(output, withOutput)
    }

}
