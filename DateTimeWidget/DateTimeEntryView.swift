//
//  DateTimeView.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 27/05/22.
//

import SwiftUI

struct DateTimeEntryView: View {
  let entry: DateTimeEntry
  
    var body: some View {
      ZStack {
        VStack(spacing: 5) {
          Text(getMonth())
            .bold()
            .foregroundColor(.white)
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: 30)
            .background(Rectangle().fill(Color.red))
          
          Text(getDay())
            .foregroundColor(.black)
          
          Text(getDate())
            .font(.largeTitle)
            .foregroundColor(.black)
          
          Text(getTime())
            .font(.caption)
            .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(color: .gray, radius: 5, x: 5, y: 5))
        .padding(20)
      }
      .edgesIgnoringSafeArea(.all)
    }
}

extension DateTimeEntryView {
  private func getDay() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "E"
    return dateFormatter.string(from: entry.date)
  }
  
  private func getDate() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd"
    return dateFormatter.string(from: entry.date)
  }
  
  private func getMonth() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMM"
    return dateFormatter.string(from: entry.date)
  }
  
  private func getTime() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm a"
    dateFormatter.amSymbol = "AM"
    dateFormatter.pmSymbol = "PM"
    
    return dateFormatter.string(from: entry.date)
  }
}
