//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Bülent Barış Kılıç on 26.11.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalPerPersonText: UILabel!
    @IBOutlet weak var explanationText: UILabel!
    
    var bill: Bill!

    override func viewDidLoad() {
        super.viewDidLoad()

        totalPerPersonText.text = String(format: "%.2f", bill.totalPerPerson)
        explanationText.text = "Split between \(bill.totalPerson.description) people, with \(String(format: "%.f", bill.tipPercentage * 100))% tip."
    }

}
