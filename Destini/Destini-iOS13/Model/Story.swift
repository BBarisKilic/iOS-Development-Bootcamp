
import Foundation

struct Story {
    var title: String
    var choice1: String?
    var choice2: String?
    
    init(t: String, c1: String?, c2: String?) {
        self.title = t
        self.choice1 = c1
        self.choice2 = c2
    }
}
