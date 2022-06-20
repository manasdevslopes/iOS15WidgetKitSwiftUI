//
//  RainView.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 20/06/22.
//

import SwiftUI

struct RainView: View {
  var rainData: [Rain]
  
    var body: some View {
      VStack(alignment: .leading, spacing: 15) {
        Text("CA Rain Pattern")
          .font(.title)
          .bold()
        
        HStack(spacing: 5) {
          ForEach(rainData) { rain in
            VStack(spacing: 2) {
              Text("\(rain.precip)\"")
                .font(.system(size: 10))
              
              GeometryReader { proxy in
                VStack {
                  Spacer(minLength: 0)
                  
                  ZStack(alignment: .bottom) {
                    RoundedRectangle(cornerRadius: 8)
                      .fill(LinearGradient(colors: [Color.white, Color.gray.opacity(0.2)], startPoint: .top, endPoint: .bottom))
                    RoundedRectangle(cornerRadius: 8)
                      .fill(LinearGradient(colors: [Color.orange, Color.pink], startPoint: .top, endPoint: .bottom))
                      .frame(height: computedHeight(precip: CGFloat(rain.precip), height: proxy.frame(in: .global).height))
                  }
                }.shadow(radius: 2)
              }
              
              Text(rain.month)
                .font(.system(size: 10))
              
            }
          }
        }
      }.padding()
    }
  
  private func computedHeight(precip: CGFloat, height: CGFloat) -> CGFloat {
    let max = rainData.max { $0.precip < $1.precip }
    let percentage = precip / CGFloat(max!.precip)
    return percentage * height
  }
}

struct RainView_Previews: PreviewProvider {
    static var previews: some View {
      RainView(rainData: Rain.randomized)
    }
}
