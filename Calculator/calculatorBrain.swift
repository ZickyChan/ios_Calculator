//
//  calculatorBrain.swift
//  Calculator
//
//  Created by Zick on 11/13/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

struct calculatorBrain{
    
    private var number = 0.0;
    private var append = false;
    private var beginning = true;
    private var method = "";
    
    
    
    mutating func setAppend(bool: Bool){
        self.append = bool;
    }
    func getAppend() -> Bool{
        return append;
    }
    
   /* mutating func setBegin(bool: Bool){
        self.beginning = bool;
    }
    
    public func getBegin() -> Bool{
        return beginning;
    }*/
    
    mutating func reset(){
        self.number = 0;
        self.method = "";
        self.beginning = true;
        self.append = false;
    }
    
    mutating func processFunc(method: String, b: Double) -> String{
        switch self.method{
        case "+":
            print("1st: \(number)");
            number = number + b;
            print("2nd: \(number)");
            break;
        case "-":
            number = number - b;
            break;
        case "*":
            number = number * b;
            break;
        case "/":
            if(b != 0){
                number = number/b;
            }
            else{
                reset();
                return "ERR";
            }
            break;
        default:
            number = b;
            break;
        }
        self.method = method;
        let result = number;
        if(self.method == "="){
            number = 0;
        }
        if(number > 20000000000){
            reset();
            return "ERR";
        }
        if(floor(result) == result){
            return "\(Int(result))";
        }
        else{
            return "\(result)";
        }
    }
}
