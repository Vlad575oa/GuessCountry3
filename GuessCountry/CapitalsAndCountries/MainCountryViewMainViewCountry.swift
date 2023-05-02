//
//  SwiftUIView.swift
//  SimpleGames
//
//  Created by user on 27.04.2023.
//

import SwiftUI

struct MainCountryView: View {
  @State private var guessOption = 0
  @State private var isAnimating = false

  
  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: [.yellow, .purple]),startPoint: .top, endPoint: .bottom ).ignoresSafeArea()
      VStack {
        Picker(selection: $guessOption, label: Text("Угадывать:")) {
          Text("Country").tag(0)
          Text("Capital").tag(1)
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding()
        .foregroundColor(.black)
        .onChange(of: guessOption) { _ in
          withAnimation(.easeOut(duration: 1.2)) {
            isAnimating = true
          }
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            isAnimating = false
          }
        }
        Spacer()

        if guessOption == 0 {
          CountryView()
        } else if guessOption ==  1 {
          CapitalView()
        }
      }
      }
    }
  }


struct MainCountryView_Previews: PreviewProvider {
  static var previews: some View {
    MainCountryView()
  }
}
