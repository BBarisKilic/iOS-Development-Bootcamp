
import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultBMI: UILabel!
    @IBOutlet weak var resultText: UILabel!
    
    var bmiValue: String = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultBMI.text = bmiValue
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
