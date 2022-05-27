//
//  HelloWidget.swift
//  HelloWidget
//
//  Created by MANAS VIJAYWARGIYA on 25/05/22.
//

import WidgetKit
import SwiftUI

@main
struct HelloWidget: Widget {
  // Kind - Unique name for the widget
  let kind: String = "HelloWidget"
  
  var body: some WidgetConfiguration {
    // StaticConfiguration means when the widget doesn't have edit more option thing.
    StaticConfiguration(kind: kind, provider: HelloWidgetTimelineProvider()) { _ in
      // View
      HelloWidgetView()
    }
  }
}
