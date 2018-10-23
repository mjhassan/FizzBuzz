//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Jahid Hassan on 10/23/18.
//  Copyright © 2018 Jahid Hassan. All rights reserved.
//

import Foundation

struct FizzBuzz {
    func fizzbuzz_v1(number: Int) -> String {
        var result = ""
        
        if number % 3 == 0 {
            result += "Fizz"
        }
        
        if number % 5 == 0 {
            result += "Buzz"
        }
        
        if result.count == 0 {
            result = String(number)
        }
        
        return result
    }
    
    func fizzbuzz_v2(number: Int) -> String {
        switch (number % 3 == 0, number % 5 == 0) {
        case (true, false):
            return "Fizz"
        case (false, true):
            return "Buzz"
        case (true, true):
            return "FizzBuzz"
        case (false, false):
            return String(number)
        }
    }
}
