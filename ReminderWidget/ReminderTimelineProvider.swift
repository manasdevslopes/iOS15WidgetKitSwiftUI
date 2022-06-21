//
//  ReminderTimelineProvider.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 21/06/22.
//

import WidgetKit

struct ReminderTimelineProvider: TimelineProvider {
  typealias Entry = ReminderWidgetEntry
  
  func placeholder(in context: Context) -> ReminderWidgetEntry {
    ReminderWidgetEntry(reminderCount: 2)
  }
  
  func getSnapshot(in context: Context, completion: @escaping (ReminderWidgetEntry) -> Void) {
    completion(ReminderWidgetEntry(reminderCount: 2))
  }
  
  func getTimeline(in context: Context, completion: @escaping (Timeline<ReminderWidgetEntry>) -> Void) {
    let entry = ReminderWidgetEntry(reminderCount: getData())
    completion(Timeline(entries: [entry], policy: .never))
  }
  
  private func getData() -> Int {
    let defaults = UserDefaults(suiteName: AppConstants.group)
    defaults?.synchronize()
    let count = defaults?.value(forKey: AppConstants.reminderKey) as? Int ?? 0
    return count
  }
}
