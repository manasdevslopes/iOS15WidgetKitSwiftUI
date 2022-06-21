//
//  ReminderWidgetView.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 21/06/22.
//

import SwiftUI

struct ReminderWidgetView: View {
  let count: Int
  
  var body: some View {
    VStack {
      Text("\(count)")
        .font(.largeTitle)
      
      Text("Reminder(s)")
    }
    .foregroundColor(.white)
    .padding()
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(LinearGradient(colors: [Color.purple, Color.purple.opacity(0.4)], startPoint: .bottom, endPoint: .top))
  }
  
}
