//
//  MyWidgetsBundle.swift
//  HelloWidgetExtension
//
//  Created by MANAS VIJAYWARGIYA on 27/05/22.
//

import SwiftUI
import WidgetKit

@main
struct MyWidgetsBundle: WidgetBundle {
  var body: some Widget{
    HelloWidget()
    DateTimeWidget()
    QuoteWidget()
    WeatherWidget()
  }
}

