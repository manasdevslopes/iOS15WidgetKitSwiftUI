//
//  HelloWidgetView.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 25/05/22.
//

import SwiftUI

// Third Step to create a view
struct HelloWidgetView: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text("Hello")
        Text("@_iOSManas!")
          .bold()
          .foregroundColor(.orange)
          .font(.title2)
      }
      .font(.title3)
    }
}

struct HelloWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        HelloWidgetView()
    }
}
