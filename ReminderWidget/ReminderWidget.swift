//
//  ReminderWidget.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 21/06/22.
//

import SwiftUI
import WidgetKit

struct ReminderWidget: Widget {
  private let kind = "ReminderWidget"
  
  var body: some WidgetConfiguration {
    StaticConfiguration(kind: kind, provider: ReminderTimelineProvider()) { entry in
      ReminderWidgetView(count: entry.reminderCount)
    }
    .supportedFamilies([.systemSmall])
    .configurationDisplayName("Reminders")
    .description("Widget shows reminder count.")
  }
}
