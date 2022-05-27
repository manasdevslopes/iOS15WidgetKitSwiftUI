  //
  //  DateTimeWidget.swift
  //  HelloWidgetExtension
  //
  //  Created by MANAS VIJAYWARGIYA on 27/05/22.
  //

import SwiftUI
import WidgetKit


struct DateTimeWidget: Widget {
  // Kind - Unique name for the widget
  private let kind = "DateTimeWidget"
  
  var body: some WidgetConfiguration {
    StaticConfiguration(kind: kind, provider: DateTimeTimelineProvider()) { entry in
      DateTimeEntryView(entry: entry)
    }
    .supportedFamilies([.systemSmall])
    .configurationDisplayName("Today")
    .description("Widget shows today's date")
  }
}
