//
//  RainTimelineProvider.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 20/06/22.
//

import WidgetKit

struct RainTimelineProvider: TimelineProvider {
  typealias Entry = RainEntry
  
  private let rainData = Rain.sample
  
  func placeholder(in context: Context) -> RainEntry {
    RainEntry(date: Date(), rainData: rainData)
  }
  
  func getSnapshot(in context: Context, completion: @escaping (RainEntry) -> Void) {
    completion(RainEntry(date: Date(), rainData: rainData))
  }
  
  func getTimeline(in context: Context, completion: @escaping (Timeline<RainEntry>) -> Void) {
    let currentDate = Date()
    
    let entry = RainEntry(date: currentDate, rainData: Rain.randomized)
    
    let nextDate = Calendar.current.date(byAdding: .minute, value: 5, to: currentDate)!
    
    completion(Timeline(entries: [entry], policy: .after(nextDate)))
  }
}
