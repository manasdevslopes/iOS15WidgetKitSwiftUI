//
//  HelloWidgetEntry.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 25/05/22.
//

import WidgetKit

// First Step - TimelineEntry
// TimelineEntry is a type that specifies a date to display in widget. And Optionally also indicates current relevance for widgets content.
struct HelloWidgetEntry: TimelineEntry {
  let date = Date()
  
  // This is required when the user put the widgets in stacks, this relevance property is used of your entry for your timeline provider to determine how relevant, this widget are, to the user.
  /*let relevance = TimelineEntryRelevance(score: <#T##Float#>, duration: <#T##TimeInterval#>)*/
  
  
}
