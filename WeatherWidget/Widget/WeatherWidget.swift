//
//  WeatherWidget.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 18/06/22.
//

import SwiftUI
import WidgetKit

struct WeatherWidget: Widget {
  private let kind = "WeatherWidget"
  
  var body: some WidgetConfiguration {
    StaticConfiguration(kind: kind, provider: WeatherTimelineProvider()) { entry in
      WeatherEntryView(entry: entry)
    }
    .configurationDisplayName("SF Weather Widget")
    .description("This widget shows current weather for SF.")
  }
}
