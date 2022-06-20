//
//  Rain.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 20/06/22.
//

import Foundation

struct Rain: Identifiable {
  let id = UUID()
  var month: String
  var precip: Int
}

extension Rain {
  static var sample: [Rain] {
    [
      Rain(month: "Jan", precip: 26),
      Rain(month: "Feb", precip: 12),
      Rain(month: "Mar", precip: 9),
      Rain(month: "Apr", precip: 16),
      Rain(month: "May", precip: 19),
      Rain(month: "Jun", precip: 2),
      Rain(month: "Jul", precip: 6),
      Rain(month: "Aug", precip: 3),
      Rain(month: "Sep", precip: 1),
      Rain(month: "Oct", precip: 10),
      Rain(month: "Nov", precip: 14),
      Rain(month: "Dec", precip: 20)
    ]
  }
  
  static var randomized: [Rain] {
    [
      Rain(month: "Jan", precip: Int.random(in: 1...30)),
      Rain(month: "Feb", precip: Int.random(in: 1...30)),
      Rain(month: "Mar", precip: Int.random(in: 1...30)),
      Rain(month: "Apr", precip: Int.random(in: 1...30)),
      Rain(month: "May", precip: Int.random(in: 1...30)),
      Rain(month: "Jun", precip: Int.random(in: 1...30)),
      Rain(month: "Jul", precip: Int.random(in: 1...30)),
      Rain(month: "Aug", precip: Int.random(in: 1...30)),
      Rain(month: "Sep", precip: Int.random(in: 1...30)),
      Rain(month: "Oct", precip: Int.random(in: 1...30)),
      Rain(month: "Nov", precip: Int.random(in: 1...30)),
      Rain(month: "Dec", precip: Int.random(in: 1...30))
    ]
  }
}
