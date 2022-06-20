//
//  ContentView.swift
//  iOS15WidgetKit
//
//  Created by MANAS VIJAYWARGIYA on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      RainView(rainData: Rain.randomized)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
