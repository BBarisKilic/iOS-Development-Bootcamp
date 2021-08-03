
import UIKit

class ViewController: UIViewController {
    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

    @IBOutlet weak var firstDiceImageView: UIImageView!
    @IBOutlet weak var secondDiceImageView: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        firstDiceImageView.image = diceArray[Int.random(in: 0...5)]
        secondDiceImageView.image = diceArray[Int.random(in: 0...5)]
    }
}

