//
//  CapitalView.swift
//  SimpleGames
//
//  Created by user on 27.04.2023.
//

import SwiftUI

struct CapitalView: View {
  // Name of the current capital
  @State private var currentCapital = ""
  // Three answer options
  @State private var currentCountry = ""
  
  @State private var answerOptions = [String]()
  // Number of correct answers
  @State private var correctAnswersCount = 0
  // Number of incorrect answers
  @State private var wrongAnswersCount = 0
  // Search text
  @State private var searchText = ""
  @State private var isAnimating = false
  
  // Filtered dictionary
  
  
  let array = CountriesAndCapitals().countryAndCapital
  
  var body: some View {
    VStack {
      
      Text(currentCapital)
        .multilineTextAlignment(.center)
        .font(.system(size: 30))
        .padding()
        .background(.green.opacity(0.7))
        .cornerRadius(10)
      
      Text("Country?")
        .font(.system(size: 30))
        .padding()
        .cornerRadius(10)
      
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
        }
      }
      HStack {
        Text("Answer +: \(correctAnswersCount)")
          .padding()
        Text("Answer -: \(wrongAnswersCount)")
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
          .padding(.horizontal, 10)
          .padding(.vertical, 5)
          .background(isAnimating ? Color.green : Color.blue)
          .cornerRadius(5)
          .scaleEffect(isAnimating ? 1.1 : 1.0)
          .shadow(color: Color.gray.opacity(0.9), radius: 4, x: 5, y: 5)
          .padding()
      }
      .onAppear(perform: newQuestion)
    }
  }
  
  
  // Generate new question
  func checkAnswer(_ answer: String) {
    if answer == currentCountry {
      // Answer is correct, increase score and generate new question
      correctAnswersCount += 1
      newQuestion()
    } else {
      // Answer is incorrect, show alert and increase wrong answers count
      wrongAnswersCount += 1
      let message = "Wrong! Right answer: \(currentCountry)"
      let alert = UIAlertController(title: "Result", message: message, preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
        self.newQuestion()
      }))
      if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
         let rootViewController = windowScene.windows.first?.rootViewController {
        rootViewController.present(alert, animated: true)
      }
    }
  }
  
  // Generate new question
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

struct CapitalView_Previews: PreviewProvider {
    static var previews: some View {
        CapitalView()
    }
}
