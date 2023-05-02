//
//  CapitalAndCountryView.swift
//  SimpleGames
//
//  Created by user on 27.04.2023.
//
import SwiftUI

import SwiftUI

struct CountryView: View {
  // Название текущей страны
  @State private var currentCountry = ""
  // Название текущей столицы
  @State private var currentCapital = ""
  // Три варианта ответа
  @State private var answerOptions = [String]()
  // Количество правильных ответов
  @State private var correctAnswersCount = 0
  // Количество неправильных ответов
  @State private var wrongAnswersCount = 0
  // Переменная для поиска
  
  @State private var isAnimating = false
  @State private var guessOption = 0
  
  let array = CountriesAndCapitals().countryAndCapital
  
  var body: some View {
    VStack {
      Text(currentCountry)
        .multilineTextAlignment(.center)
        .font(.system(size: 30))
        .padding()
        .foregroundColor(.black)
        .background(.green.opacity(0.7))
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.9), radius: 3, x: 3, y: 3)
      
      Text("Capital?")
        .font(.system(size: 30))
        .padding()
        .foregroundColor(.black)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.9), radius: 3, x: 3, y: 3)
      
      ForEach(answerOptions, id: \.self) { option in
        Button(action: {
          self.checkAnswer(option)
        }) {
          Text(option)
            .font(.title)
            .foregroundColor(.black)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(color: Color.gray.opacity(0.9), radius: 3, x: 3, y: 3)
        }
      }
      HStack {
        Text("\(NSLocalizedString("Answer", comment: "")) +: \(correctAnswersCount)")
          .foregroundColor(.black)
          .shadow(color: Color.gray.opacity(0.9), radius: 3, x: 3, y: 3)
          .padding()
        Text("\(NSLocalizedString("Answer", comment: "")) -: \(wrongAnswersCount)")
          .foregroundColor(.black)
          .shadow(color: Color.gray.opacity(0.9), radius: 3, x: 3, y: 3)
          .padding()
      }
      Spacer()
      
      Button(action: {
        withAnimation(.easeOut(duration: 0.5)) {
          correctAnswersCount = 0
          wrongAnswersCount = 0
          isAnimating = true
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
          isAnimating = false
        }
      }) {
        Text("Reset")
          .font(.system(size: 18, weight: .medium))
          .font(.headline)
          .foregroundColor(.black)
          .padding()
          .background(isAnimating ? Color.green : Color.blue)
          .cornerRadius(5)
          .scaleEffect(isAnimating ? 1.1 : 1.0)
          .shadow(color: Color.gray.opacity(0.9), radius: 4, x: 4, y: 4)
          .padding(.bottom, 30)
        
      }
      .onAppear(perform: newQuestion)
    }
  }
}

struct CapitalAndCountryView_Previews: PreviewProvider {
  static var previews: some View {
    CountryView()
  }
}



// Функции для поиска Столицы
extension CountryView {
  
  func newQuestion() {
    withAnimation(.easeIn(duration: 0.5)) {
      // Get a random country and its corresponding capital from the array
      let countryCapital = array.randomElement()!
      currentCountry = countryCapital.country
      currentCapital = countryCapital.capital
      
      // Generate three possible answer options
      answerOptions = answerOptions(for: currentCapital)
    }
  }
  
  func checkAnswer(_ answer: String) {
    if answer == currentCapital {
      // Answer is correct, increase correct answer count
      correctAnswersCount += 1
      // Generate a new question
      newQuestion()
    } else {
      // Answer is incorrect, increase wrong answer count and show a message
      wrongAnswersCount += 1
      let message = "\(NSLocalizedString("Wrong! Right answer:", comment: "")) \(currentCapital)"
      let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
        self.newQuestion()
      }))
      if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
         let rootViewController = windowScene.windows.first?.rootViewController {
        rootViewController.present(alert, animated: true)
      }
    }
  }
  
  func answerOptions(for capital: String) -> [String] {
    var options = [capital]
    while options.count < 3 {
      // Choose a random country and its corresponding capital from the array
      let randomCountryCapital = array.randomElement()!
      let randomCapital = randomCountryCapital.capital
      // Check that the selected capital is not the correct answer and is not already in the options
      if randomCapital != capital && !options.contains(randomCapital) {
        options.append(randomCapital)
      }
    }
    return options.shuffled()
  }
}




