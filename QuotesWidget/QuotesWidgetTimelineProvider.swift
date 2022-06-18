//
//  QuotesWidgetTimelineProvider.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 29/05/22.
//

import WidgetKit

struct QuotesWidgetTimelineProvider: TimelineProvider {
  typealias Entry = QuotesWidgetEntry
  
  var networkManager = QuoteService()
  let placeholderQuote = Quote(quoteText: "Nothing in life is to be feared. It is only to be understood.", quoteAuthor: "Marie Curie")
  
  func placeholder(in context: Context) -> QuotesWidgetEntry {
    QuotesWidgetEntry(date: Date(), quote: placeholderQuote)
  }
  
  func getSnapshot(in context: Context, completion: @escaping (QuotesWidgetEntry) -> Void) {
    completion(QuotesWidgetEntry(date: Date(), quote: placeholderQuote))
  }
  
  func getTimeline(in context: Context, completion: @escaping (Timeline<QuotesWidgetEntry>) -> Void) {
    networkManager.getRandomQuote { result in
      
      let date = Date()
      let entry = QuotesWidgetEntry(date: date, quote: result)
      
      let nextUpdate = Calendar.current.date(byAdding: .minute, value: 2, to: date)
      
      let timeline = Timeline(entries: [entry], policy: .after(nextUpdate!))
      completion(timeline)
    }
  }
}
