
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var meterLabel: UILabel!
    @IBOutlet weak var kilogramLabel: UILabel!
    @IBOutlet weak var heightSliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        meterLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        kilogramLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bmi = weightSliderOutlet.value / pow(heightSliderOutlet.value, 2)
        print(bmi)
    }
}

