import Alamofire
import Foundation

public protocol WeatherService {
    func getTemperature() async throws -> Int
}

enum baseUrl: String{
    case realServer = "https://api.openweathermap.org/data/2.5/weather?lat=44.5646&lon=-123.2620&appid=b4863c4295d2382760f7a538b165ba84"
    case mockServer = "http://localhost:3000/data/2.5/weather"
}

class WeatherServiceImpl: WeatherService {
    
    let url = baseUrl.realServer.rawValue
    
    func getTemperature() async throws -> Int {
        return try await withCheckedThrowingContinuation { continuation in
            AF.request(url as URLConvertible, method: .get).validate(statusCode: 200..<300).responseDecodable(of: Weather.self) { response in
                switch response.result {
                case let .success(weather):
                    let temperature = weather.main.temp
                    let temperatureAsInteger = Int(temperature)
                    continuation.resume(with: .success(temperatureAsInteger))

                case let .failure(error):
                    continuation.resume(with: .failure(error))
                }
            }
        }
    }
}

//Given
struct Weather: Decodable {
    let main: Main

    struct Main: Decodable {
        let temp: Double
    }
}

//Given
let testData = """
{
    "main" :
    {
        "temp" : 56.7007697012436
    }
}
""".data(using: .utf8)!
