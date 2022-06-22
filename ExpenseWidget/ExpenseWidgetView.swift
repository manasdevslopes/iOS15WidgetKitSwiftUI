  //
  //  ExpenseWidgetView.swift
  //  HelloWidgetExtension
  //
  //  Created by MANAS VIJAYWARGIYA on 22/06/22.
  //

import SwiftUI

struct ExpenseWidgetView: View {
  let category: ExpenseCategory
  
  var body: some View {
    switch category {
      case .all:
        ZStack {
          Color.blue.opacity(0.6)
          VStack {
            Text("Total Expense")
            Text("$4600")
              .font(.title)
            
            ZStack(alignment: .leading) {
              RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.5))
              
              RoundedRectangle(cornerRadius: 10).fill(Color.blue.opacity(0.9))
                .frame(width: 30)
            }.frame(height: 20)
              .padding(.horizontal)
          }.foregroundColor(.white)
        }
      case .food:
        ZStack {
          Color.orange.opacity(0.6)
          VStack {
            Text("Food Expense")
            Text("$600")
              .font(.title)
            
            ZStack(alignment: .leading) {
              RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.5))
              
              RoundedRectangle(cornerRadius: 10).fill(Color.orange.opacity(0.9))
                .frame(width: 60)
            }.frame(height: 20)
              .padding(.horizontal)
          }.foregroundColor(.white)
        }
      case .grocery:
        ZStack {
          Color.purple.opacity(0.6)
          VStack {
            Text("Grocery Expense")
            Text("$1200")
              .font(.title)
            
            ZStack(alignment: .leading) {
              RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.5))
              
              RoundedRectangle(cornerRadius: 10).fill(Color.purple.opacity(0.9))
                .frame(width: 10)
            }.frame(height: 20)
              .padding(.horizontal)
          }.foregroundColor(.white)
        }
      case .gas:
        ZStack {
          Color.green.opacity(0.6)
          VStack {
            Text("Gas Expense")
            Text("$600")
              .font(.title)
            
            ZStack(alignment: .leading) {
              RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.5))
              
              RoundedRectangle(cornerRadius: 10).fill(Color.green.opacity(0.9))
                .frame(width: 15)
            }.frame(height: 20)
              .padding(.horizontal)
          }.foregroundColor(.white)
        }
      case .rent:
        ZStack {
          Color.pink.opacity(0.6)
          VStack {
            Text("Rent Expense")
            Text("$2200")
              .font(.title)
            
            ZStack(alignment: .leading) {
              RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.5))
              
              RoundedRectangle(cornerRadius: 10).fill(Color.pink.opacity(0.9))
                .frame(width: 60)
            }.frame(height: 20)
              .padding(.horizontal)
          }.foregroundColor(.white)
        }
    }
  }
}
