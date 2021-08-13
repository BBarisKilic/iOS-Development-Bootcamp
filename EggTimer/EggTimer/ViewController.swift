
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 3, "Medium": 420, "Hard": 720]
    var timer = Timer()
    var totalTime = 0
    var secondsPast = 0
    var player: AVAudioPlayer?
    
    @IBAction func pressedLevel(_ sender: UIButton) {
        timer.invalidate()
        secondsPast = 0
        
        let cookingMode = sender.currentTitle!
        mainTitle.text = cookingMode
        
        totalTime = eggTimes[cookingMode]!
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if secondsPast < totalTime {
            secondsPast += 1
            let progress = Float(secondsPast) / Float(totalTime)
            progressBar.progress = progress
        } else {
            mainTitle.text = "DONE!"
            playSound()
        }
    }
    
    func playSound() {
            guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }

            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)

                player = try AVAudioPlayer(contentsOf:  url, fileTypeHint: AVFileType.mp3.rawValue)

                guard let player = player else { return }

                player.play()

            } catch let error {
                print(error.localizedDescription)
            }
        }
}
