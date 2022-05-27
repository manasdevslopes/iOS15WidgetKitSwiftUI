  //
  //  HelloWidgetTimelineProvider.swift
  //  HelloWidgetExtension
  //
  //  Created by MANAS VIJAYWARGIYA on 25/05/22.
  //

import WidgetKit

  // First Step - TimelineProvider
struct HelloWidgetTimelineProvider: TimelineProvider {
  /*
   
   Health 25%        Health 50%               Health 75%              Health 100%
   |--------------------|------------------------|------------------------|--------------->
   Now                1 hour                    2 Hour                  3 hour
   
   */
  
  
  
    // Entry that was created in HelloWidgetEntry
  typealias Entry = HelloWidgetEntry
  
  func placeholder(in context: Context) -> HelloWidgetEntry {
    // first time show data - its like redacted shimmer effect
    HelloWidgetEntry()
  }
  
  func getSnapshot(in context: Context, completion: @escaping (HelloWidgetEntry) -> Void) {
    // Second async - it will show real data
    completion(HelloWidgetEntry())
  }
  
  func getTimeline(in context: Context, completion: @escaping (Timeline<HelloWidgetEntry>) -> Void) {
    // provides an array of timeline entries for the current time. and optionally any future time.
    
    // Timeline - It is an object that specifies a date for the widget to update your widgets view. Now this tells our widget kit when to update our registered timeline through refresh policy, which is the policy that states in last parameter, that specifies the earliest date for widget to get to request a new timeline from the provider.
    completion(Timeline(entries: [HelloWidgetEntry()], policy: .never))
  }
  
}
