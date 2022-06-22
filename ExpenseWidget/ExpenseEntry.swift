//
//  ExpenseEntry.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 22/06/22.
//

import WidgetKit

struct ExpenseEntry: TimelineEntry {
  let date = Date()
  let category: ExpenseCategory
}
