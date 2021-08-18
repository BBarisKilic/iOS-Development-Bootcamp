
import Foundation

class CalculatorBrain {
    var bmi: Float = 0
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi)
    }
    
    func calculateBMI(height: Float, weight: Float) {
        bmi =  weight / pow(height, 2)
    }
}
