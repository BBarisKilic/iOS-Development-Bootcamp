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
    
    var bill: Bill!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bill = Bill(tipPercentage: 0.0, totalPerson: 0, totalPerPerson: 0.0)
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        switch sender.currentTitle! {
        case "20%":
            bill.tipPercentage = 0.2
            twentyPctButton.isSelected = true
            tenPctButton.isSelected = false
            zeroPctButton.isSelected = false
            break
        case "10%":
            bill.tipPercentage = 0.1
            twentyPctButton.isSelected = false
            tenPctButton.isSelected = true
            zeroPctButton.isSelected = false
            break
        default:
            bill.tipPercentage = 0.0
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
        let rawBill: Double = Double(billTextField.text!) ?? 0.0
        let tip: Double = rawBill * bill.tipPercentage
        let total: Double = rawBill + tip
        
        bill.totalPerson = Int(splitNumberLabel.text!) ?? 2
        bill.totalPerPerson = total / Double(bill.totalPerson)
        
        performSegue(withIdentifier: "resultsSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultsViewController = segue.destination as? ResultsViewController {
            resultsViewController.bill = self.bill
        }
    }
    
}

