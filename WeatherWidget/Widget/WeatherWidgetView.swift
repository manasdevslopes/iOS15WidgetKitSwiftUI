//
//  WeatherWidgetView.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 18/06/22.
//

import SwiftUI

struct WeatherView: View {
  let weather: Weather
  let updatedDate: Date
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("San Francisco")
      Text("\(weather.temperature)°\(weather.unit)")
        .font(.largeTitle)
      Text(WeatherUtils.getWeatherIcon(weather.description))
        .padding(.top, 10)
      Text(weather.description)
        .font(.footnote)
      
      HStack {
        Spacer()
        Text("Update: \(updatedDate.timeOnly())")
          .font(.system(size: 12))
          .foregroundColor(.secondary)
      }
    }.padding()
  }
}

struct DailyWeatherView: View {
  let weather: Weather
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(weather.name.lowercased().contains("night") ? "\(weather.name.prefix(2)) 🌙" : weather.name.prefix(2))
      
      Text("\(weather.temperature)°\(weather.unit)")
      
      Text(WeatherUtils.getWeatherIcon(weather.description))
        
    }.padding()
  }
}

struct WeatherEntryView: View {
  let entry: WeatherEntry
  
  @Environment(\.widgetFamily) var family
  
  let baseColor = Color.gray.opacity(0.2)
  let darkColor = Color.black.opacity(0.8)
  
  var body: some View {
    switch family {
      case .systemSmall:
        ZStack {
          baseColor
          WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
        }.edgesIgnoringSafeArea(.all)
        
      case .systemMedium:
        ZStack {
          HStack(spacing: 0) {
            Rectangle().fill(baseColor)
            Rectangle().fill(darkColor)
          }
          HStack {
            WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
            WeatherView(weather: entry.weatherInfo[1], updatedDate: entry.date)
              .foregroundColor(.white)
          }
        }
        
      case .systemLarge:
        VStack {
          ZStack {
            HStack(spacing: 0) {
              Rectangle().fill(baseColor)
              Rectangle().fill(darkColor)
            }
            HStack {
              WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
              WeatherView(weather: entry.weatherInfo[1], updatedDate: entry.date)
                .foregroundColor(.white)
            }
          }
          VStack {
            HStack {
              VStack(alignment: .leading) {
                DailyWeatherView(weather: entry.weatherInfo[2])
                DailyWeatherView(weather: entry.weatherInfo[3])
              }
              
              VStack(alignment: .leading) {
                DailyWeatherView(weather: entry.weatherInfo[4])
                DailyWeatherView(weather: entry.weatherInfo[5])
              }
              
              VStack(alignment: .leading) {
                DailyWeatherView(weather: entry.weatherInfo[6])
                DailyWeatherView(weather: entry.weatherInfo[7])
              }
              
              VStack(alignment: .leading) {
                DailyWeatherView(weather: entry.weatherInfo[8])
                DailyWeatherView(weather: entry.weatherInfo[9])
              }
            }
          }
        }
        
        
      default:
        ZStack {
          baseColor
          WeatherView(weather: entry.weatherInfo[0], updatedDate: entry.date)
        }.edgesIgnoringSafeArea(.all)
    }
  }
}
