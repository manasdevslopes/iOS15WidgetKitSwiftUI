//
//  ReminderView.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 21/06/22.
//

import SwiftUI
import WidgetKit

struct ReminderView: View {
  @State private var reminders = [Reminder]()
  @State private var newReminder = ""
  
    var body: some View {
      VStack {
        List(reminders) { reminder in
          VStack(alignment: .leading) {
            Text(reminder.title)
              .font(.title)
            
            Text("Due by " + reminder.dueOn.formatted(date: .abbreviated, time: .omitted))
              .font(.caption)
              .foregroundColor(.secondary)
          }
        }
        
        Spacer()
        
        TextField("Add new reminder", text: $newReminder)
          .textFieldStyle(.roundedBorder)
          .padding()
          .onSubmit {
            reminders.append(Reminder(title: newReminder, dueOn: Date()))
            newReminder = ""
            
            let defaults = UserDefaults(suiteName: AppConstants.group)
            defaults?.set(reminders.count, forKey: AppConstants.reminderKey)
            defaults?.synchronize()
            WidgetCenter.shared.reloadTimelines(ofKind: "ReminderWidget")
          }
      }
    }
}

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderView()
    }
}
