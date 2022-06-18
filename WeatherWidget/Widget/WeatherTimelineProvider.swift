//
//  WeatherTimelineProvider.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 18/06/22.
//

import WidgetKit

struct WeatherTimelineProvider: TimelineProvider {
  typealias Entry = WeatherEntry
  
  private func snapshotWeatherInfo() -> [Weather] {
    var weatherInfo = [Weather]()
    for i in 0...9 {
      let weather = Weather(name: "Day \(i + 1)", temperature: 10 * i, unit: "F", description: "Cloudy")
      weatherInfo.append(weather)
    }
    return weatherInfo
  }
  
  func placeholder(in context: Context) -> WeatherEntry {
    WeatherEntry(date: Date(), weatherInfo: snapshotWeatherInfo())
  }
  
  func getSnapshot(in context: Context, completion: @escaping (WeatherEntry) -> Void) {
    completion(WeatherEntry(date: Date(), weatherInfo: snapshotWeatherInfo()))
  }
  
  func getTimeline(in context: Context, completion: @escaping (Timeline<WeatherEntry>) -> Void) {
    let currentDate = Date()
    let refreshDate = Calendar.current.date(byAdding: .minute, value: 15, to: currentDate)!
    
    WeatherService().getWeather { result in
      let weatherInfo: [Weather]
      
      switch result {
        case .success(let fetchedWeather):
          weatherInfo = fetchedWeather
          
        case .failure(let err):
          weatherInfo = [Weather(name: "Error", temperature: 0, unit: "", description: "\(err.localizedDescription)")]
      }
      
      let entry = WeatherEntry(date: currentDate, weatherInfo: weatherInfo)
      let timeline = Timeline(entries: [entry], policy: .after(refreshDate))
      
      completion(timeline)
    }
  }
  
}
