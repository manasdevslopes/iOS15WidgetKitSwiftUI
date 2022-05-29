//
//  QuoteWidget.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 29/05/22.
//

import SwiftUI
import WidgetKit

struct QuoteWidget: Widget {
  private let kind = "QuoteWidget"
  
  var body: some WidgetConfiguration {
    StaticConfiguration(kind: kind, provider: QuotesWidgetTimelineProvider()) { entry in
      QuoteWidgetView(entry: entry)
    }
    .supportedFamilies([.systemMedium])
    .configurationDisplayName("Famous Quotes")
    .description("Widget to display famous quotes")
  }
}
