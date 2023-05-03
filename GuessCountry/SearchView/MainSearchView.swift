//
//  MainSearchView.swift
//  Guess сountry
//
//  Created by user on 02.05.2023.
//

import SwiftUI

struct MainSearchView: View {
  @State private var guessOption = 0
  @State private var isAnimating = false


  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: [.yellow, .purple]),startPoint: .top, endPoint: .bottom ).ignoresSafeArea()
      VStack {
        Picker(selection: $guessOption, label: Text("Угадывать:")) {
          Text("Find the flag").tag(1)
          Text("Find the country").tag(0)

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
          SearchFlagView()
        } else {
          SearchCountryView()
        }
      }
      }
    }
  }

struct MainSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MainSearchView()
    }
}
