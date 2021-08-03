//
//  ViewController.swift
//  Magic Ball 8
//
//  Created by Bülent Barış Kılıç on 3.08.2021.
//

import UIKit

class ViewController: UIViewController {
    let answers = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = answers[0]
    }


    @IBAction func askButtonPressed(_ sender: UIButton) {
        imageView.image = answers[Int.random(in: 0...4)]
    }
}

