//
//  ExpenseTimelineProvider.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 22/06/22.
//

import WidgetKit

struct ExpenseTimelineProvider: IntentTimelineProvider {
  typealias Entry =  ExpenseEntry
  typealias Intent = MonthlyExpenseIntent
  
  private func category(for config: MonthlyExpenseIntent) -> ExpenseCategory {
    switch config.category {
      case .all:
        return .all
      case .food:
        return .food
      case .gas:
        return .gas
      case .grocery:
        return .grocery
      case .rent:
        return .rent
      default:
        return .all
    }
  }
  
  func placeholder(in context: Context) -> ExpenseEntry {
    ExpenseEntry(category: .all)
  }
  
  func getSnapshot(for configuration: MonthlyExpenseIntent, in context: Context, completion: @escaping (ExpenseEntry) -> Void) {
    completion(ExpenseEntry(category: category(for: configuration)))
  }
  
  func getTimeline(for configuration: MonthlyExpenseIntent, in context: Context, completion: @escaping (Timeline<ExpenseEntry>) -> Void) {
    let currentDate = Date()
    let entry = ExpenseEntry(category: category(for: configuration))
    let nextDate = Calendar.current.date(byAdding: .minute, value: 15, to: currentDate)!
    completion(Timeline(entries: [entry], policy: .after(nextDate)))
  }
}
