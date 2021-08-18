
import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultBMI: UILabel!
    @IBOutlet weak var resultText: UILabel!
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultBMI.text = bmiValue ?? ""
        resultText.text = bmiAdvice ?? ""
        view.backgroundColor = bmiColor ?? .red
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
