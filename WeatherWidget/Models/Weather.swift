//
//  Weather.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 18/06/22.
//

import Foundation

struct Weather: Codable {
  let name: String
  let temperature: Int
  let unit: String
  let description: String
}

struct WeatherResponse: Codable {
  let forecast: [Weather]
}
