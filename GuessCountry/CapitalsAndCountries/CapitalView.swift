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
  var filteredDictionary: [String: String] {
    if searchText.isEmpty {
      return dictionary
    } else {
      return dictionary.filter { key, value in
        key.localizedCaseInsensitiveContains(searchText) || value.localizedCaseInsensitiveContains(searchText)
      }
    }
  }

  let dictionary = CountriesAndCapitals().dictionary

  var body: some View {
      VStack {

        Text(currentCapital)
          .multilineTextAlignment(.center)
          .font(.system(size: 30))
          .padding()
          .background(.green.opacity(0.7))
          .cornerRadius(10)

        Text("страна?")
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
          Text("Ответ +: \(correctAnswersCount)")
            .padding()
          Text("Ответ -: \(wrongAnswersCount)")
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
          Text("Сбросить счет")
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
        let message = "Неправильно! Правильный ответ: \(currentCountry)"
        let alert = UIAlertController(title: "Результат", message: message, preferredStyle: .alert)
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
      // Get a random country and its capital from the filtered dictionary
      let (country, capital) = filteredDictionary.randomElement()!
      currentCountry = country
      currentCapital = capital
      // Generate three country answer options
      answerOptions = answerOptions(for: country)
    }
  }

  // Generate three capital answer options that do not include the correct answer
  func answerOptions(for correctAnswer: String) -> [String] {
      var options = [correctAnswer]
      while options.count < 3 {
          // Get a random capital from the dictionary
          let randomCapital = dictionary.values.randomElement()!
          // Check if the capital is not the correct answer and not already in the answer options
          if randomCapital != correctAnswer && !options.contains(randomCapital) {
              options.append(randomCapital)
          }
      }
      // Shuffle the answer options and return them
      return options.shuffled()
  }}


struct CapitalView_Previews: PreviewProvider {
    static var previews: some View {
        CapitalView()
    }
}
