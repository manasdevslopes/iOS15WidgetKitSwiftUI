//
//  WeatherUtils.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 18/06/22.
//

import Foundation

struct WeatherUtils {
  static func getWeatherIcon(_ conditionString: String) -> String {
    let current = conditionString.lowercased()
    switch current {
      case _ where current.contains("partly sunny"):
        return "🌤"
        
      case _ where current.contains("light rain"):
        return "☔️"
        
      case _ where current.contains("cloudy"):
        return "☁️"
        
      case _ where current.contains("drizzle"):
        return "🌧"
        
      case _ where current.contains("sunny"):
        return "☀️"
        
      case _ where current.contains("clear"):
        return "☀️"
        
      case _ where current.contains("fog"):
        return "🌫"
        
      default:
        return "🌤"
    }
  }
}
