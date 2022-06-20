//
//  RainWidget.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 20/06/22.
//

import SwiftUI
import WidgetKit

struct RainWidget: Widget {
  private let kind = "RainWidget"
  
  var body: some WidgetConfiguration {
    StaticConfiguration(kind: kind, provider: RainTimelineProvider()) { entry in
      RainView(rainData: entry.rainData)
    }
    .supportedFamilies([.systemLarge])
    .configurationDisplayName("CA Rain Widget")
    .description("This widget displays rain pattern for California.")
  }
}
