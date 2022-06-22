//
//  ExpenseWidget.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 22/06/22.
//

import SwiftUI
import WidgetKit

struct ExpenseWidget: Widget {
  private let kind = "ExpenseWidget"
  
  var body: some WidgetConfiguration {
    IntentConfiguration(kind: kind, intent: MonthlyExpenseIntent.self, provider: ExpenseTimelineProvider()) { entry in
      ExpenseWidgetView(category: entry.category)
    }
    .supportedFamilies([.systemSmall])
    .configurationDisplayName("Expense Widget")
    .description("This widget shows monthly expenses.")
  }
}
