//
//  Reminder.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 21/06/22.
//

import Foundation

struct Reminder: Identifiable {
  let id = UUID()
  var title: String
  var dueOn: Date
}
