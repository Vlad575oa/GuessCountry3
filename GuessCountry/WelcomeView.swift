//
//  WelcomeView.swift
//  SimpleGame
//
//  Created by user on 31.03.2023.
//

import SwiftUI

struct WelcomeView: View {


  var body: some View {
    NavigationView {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [Color.green, Color.indigo, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
          .edgesIgnoringSafeArea(.all)
        VStack(spacing: 50){
          Text("Welcome")
            .multilineTextAlignment(.center)
            .font(.system(size: 30, weight: .heavy, design: .default))
            .shimmer(.init(tint: .white.opacity(0.5), highlight: .white, blur: 5))
            .padding(.all, 10)
          Spacer()
            .frame(height: 10)

            NavigationLink(destination: FlagView()) {
              Text("Guess the flag")
                .modifier(TextModifier(color: .green))
            }
            NavigationLink(destination: MainCountryView()) {
              Text("Guess the country")
                .modifier(TextModifier(color: .purple))
            }
          NavigationLink(destination: MainSearchView()) {
            Text("Search the flag or country")
              .modifier(TextModifier(color: .orange))
          }

Spacer()
          }
        }
        .navigationBarTitle("Menu", displayMode: .inline)
        .foregroundColor(.white)
      }
    }
  }

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}



