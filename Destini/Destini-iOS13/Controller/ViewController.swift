
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        let choice = sender.currentTitle
        
        if storyBrain.getCurrentStoryNumber() == 0 {
            if choice == storyBrain.getFirstChoice() {
                storyBrain.currentStoryNumber = 1
            } else {
                storyBrain.currentStoryNumber = 4
            }
        } else if storyBrain.getCurrentStoryNumber() == 1 {
            if choice == storyBrain.getFirstChoice() {
                storyBrain.currentStoryNumber = 2
            } else {
                storyBrain.currentStoryNumber = 3
            }
        } else {
            if choice == storyBrain.getFirstChoice() {
                storyBrain.currentStoryNumber = 1
            } else {
                storyBrain.currentStoryNumber = 5
            }
        }
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStory()
        choice1Button.setTitle(storyBrain.getFirstChoice(), for: .normal)
        choice2Button.setTitle(storyBrain.getSecondChoice(), for: .normal)
    }
}

