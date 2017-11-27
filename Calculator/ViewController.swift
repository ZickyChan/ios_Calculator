//
//  ViewController.swift
//  Calculator
//
//  Created by Mac on 11/11/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    private var number = 0;
    private var calBrain: calculatorBrain = calculatorBrain();
    private var allowPoint = true;
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func btnClick(_ sender: UIButton) {
        print("User has click btn: " + sender.currentTitle!);
        if(!calBrain.getAppend()){
            result.text! = sender.currentTitle!;
            calBrain.setAppend(bool: true);
            allowPoint = true;
        }
        else{
            if(sender.currentTitle == "."){
                if allowPoint{
                    allowPoint = false;
                }
                else{
                    return;
                }
            }
            result.text! += sender.currentTitle!;
            print("allow point ? \(allowPoint)");
            
        }
    }
    @IBAction func calCancel(_ sender: UIButton) {
        switch sender.currentTitle! {
        case "AC":
            
            result.text! = "0";
            calBrain.reset();
            break;
        case "C":
            result.text! = "0";
            calBrain.setAppend(bool: false);
            break;
        
        default:
            break;
        }
        
    
    }
    
    @IBAction func calAction(_ sender: UIButton) {
        if(result.text! == "ERR"){
            return;
        }
        result.text! = calBrain.processFunc(method: sender.currentTitle!, b: Double(result.text!)!);
        calBrain.setAppend(bool: false);
    }

    /*@IBOutlet weak var result: UILabel!
    
    var brain: Brain = Brain()
    
    @IBAction func btnClick(_ sender: UIButton) {
            }*/
}

