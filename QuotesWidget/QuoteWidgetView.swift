//
//  QuoteWidgetView.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 29/05/22.
//

import SwiftUI

struct QuoteWidgetView: View {
  let entry: QuotesWidgetEntry
  
    var body: some View {
      VStack {
        Text(entry.quote.quoteText)
        HStack {
          Spacer()
          
          if entry.quote.quoteAuthor != "" {
            Text("- \(entry.quote.quoteAuthor)")
          } else {
            Text("- unknown")
          }
          
        }
        .font(.caption)
        .foregroundColor(.secondary)
        
        Text(entry.date.formatted(date: .omitted, time: .shortened))
          .font(.caption)
          .foregroundColor(.secondary)
      }.padding()
    }
}
