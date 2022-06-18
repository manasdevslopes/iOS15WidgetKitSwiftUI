//
//  WeatherService.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 18/06/22.
//

import Foundation

class WeatherService {
  let url = URL(string: "https://api.lil.software/weather?latitude=40.709335&longitude=-73.956558")!
  
  func getWeather(completion: @escaping (Result<[Weather], Error>) -> ()) {
    URLSession.shared.dataTask(with: url) { data, response, error in
      guard error == nil else {
        completion(.failure(error!))
        return
      }
      
      completion(.success(self.getWeatherResponse(fromData: data!)))
    }.resume()
  }
  
  private func getWeatherResponse(fromData data: Data) -> [Weather] {
    let weatherData = try? JSONDecoder().decode(WeatherResponse.self, from: data)
    
    if let weather = weatherData {
      return weather.forecast
    }
    
    return [Weather(name: "Error", temperature: 0, unit: "", description: "Error!")]
  }
}
