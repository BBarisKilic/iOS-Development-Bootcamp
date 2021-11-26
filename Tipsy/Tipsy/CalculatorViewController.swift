//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tipPercentage: Double = 0.0

    @IBAction func tipChanged(_ sender: UIButton) {
        switch sender.currentTitle! {
        case "20%":
            tipPercentage = 0.2
            twentyPctButton.isSelected = true
            tenPctButton.isSelected = false
            zeroPctButton.isSelected = false
            break
        case "10%":
            tipPercentage = 0.1
            twentyPctButton.isSelected = false
            tenPctButton.isSelected = true
            zeroPctButton.isSelected = false
            break
        default:
            tipPercentage = 0.0
            twentyPctButton.isSelected = false
            tenPctButton.isSelected = false
            zeroPctButton.isSelected = true
            break
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.f",sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tipPercentage)
        print(splitNumberLabel.text!)
    }
    
}

