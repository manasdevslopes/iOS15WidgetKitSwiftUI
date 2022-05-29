//
//  QuoteService.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 29/05/22.
//

import Foundation

struct QuoteService {
  func getRandomQuote(completion: @escaping (Quote) -> ()) {
    let url = "https://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en"
    let session = URLSession(configuration: .default)
    
    session.dataTask(with: URL(string: url)!) { data, _, err in
      
      if err != nil {
//        print(err?.localizedDescription)
        return
      }
      
      do {
        let jsonData = try JSONDecoder().decode(Quote.self, from: data!)
        completion(jsonData)
      } catch {
        print(err!)
      }
    }
    .resume()
  }
}
