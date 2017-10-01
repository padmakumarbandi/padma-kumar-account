//
//  ViewController.swift
//  CalculatorApp
//
//  Created by IOS DEVELOPER on 7/30/17.
//  Copyright © 2017 Padma kumar. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var numberOnScreen:Double = 0;
    var previosNumber:Double = 0;
    var performingMath = false
    var operation = 0;
    @IBOutlet weak var label: UILabel!

    
    @IBAction func numbers(_ sender:UIButton) {
        
        if performingMath == true{
            label.text == String((sender).tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }else{
            label.text = label.text! + String((sender).tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
    
        
    }
    
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            previosNumber = Double(label.text!)!
            
            if sender.tag == 12//divi
            {
                label.text = "/"

                
            }else  if sender.tag == 13 //mul
            {
                label.text = "*"

                
            }else  if sender.tag == 14//min
            {
                label.text = "-"

            }else  if sender.tag == 15//add
            {
                label.text = "+"
                
            }
            operation = sender.tag;
            performingMath = true;
        
            
        }
        
        else if sender.tag == 16 {
            if operation == 12
            {
                label.text = String(previosNumber / numberOnScreen)
                
            }else if operation == 13{
                label.text = String(previosNumber * numberOnScreen)
                
            }else if operation == 14{
                label.text = String(previosNumber - numberOnScreen)
                
            }else if operation == 15{
                label.text = String(previosNumber + numberOnScreen)
                
                label.text = String(previosNumber + numberOnScreen)
            }
            
        }
        else if sender.tag == 11{
            label.text  = ""
            previosNumber = 0;
            operation = 0
            numberOnScreen = 0;
            
        }
        }
    }
    
    

    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//           }
//
//
//}
//
