
import Foundation

struct WeatherManager {
    let appId = "d5c7280dff8c6f1ecaf33dbdb46ad616"
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?q="
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)\(cityName)&appid=\(appId)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {
                (data, response, error) in
                
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    self.parseJSON(weatherData: safeData)
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.weather[0].description)
        } catch {
            print(error)
        }
    }
}
