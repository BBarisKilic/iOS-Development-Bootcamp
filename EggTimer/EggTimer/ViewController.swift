
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 3, "Medium": 420, "Hard": 720]
    var remainingTime = 0
    var timer = Timer()
    
    @IBAction func pressedLevel(_ sender: UIButton) {
        timer.invalidate()
        
        let cookingMode = sender.currentTitle!
        
        remainingTime = eggTimes[cookingMode]!
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if remainingTime > 0 {
            print("\(remainingTime) seconds")
            remainingTime -= 1
        } else {
            mainTitle.text = "DONE!"
        }
    }
    
    
}
