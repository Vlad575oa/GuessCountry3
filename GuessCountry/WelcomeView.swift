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
          Text("Добро пожаловать в моё приложение")
            .multilineTextAlignment(.center)
            .font(.system(size: 30, weight: .heavy, design: .default))
            .shimmer(.init(tint: .white.opacity(0.5), highlight: .white, blur: 5))
            .padding(.all, 10)
          Spacer()
            .frame(height: 10)

            NavigationLink(destination: FlagView()) {
              Text("Угадай флаг")
                .modifier(TextModifier(color: .blue))
            }
            NavigationLink(destination: MainView()) {
              Text("Угадай страну")
                .modifier(TextModifier(color: .purple))
            }
Spacer()
          }
        }
        .navigationBarTitle("Меню", displayMode: .inline)
        .foregroundColor(.white)
      }
    }

  }

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}



