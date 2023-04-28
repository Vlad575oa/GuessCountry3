//
//  CapitalAndCountryView.swift
//  SimpleGames
//
//  Created by user on 27.04.2023.
//
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
  
  let dictionary = CountriesAndCapitals().dictionary

  var body: some View {
    
    VStack {
      
      Text(currentCountry)
        .multilineTextAlignment(.center)
        .font(.system(size: 30))
        .padding()
        .background(.green.opacity(0.7))
        .cornerRadius(10)
      
      Text("cтолица?")
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
}

struct CapitalAndCountryView_Previews: PreviewProvider {
  static var previews: some View {
    CountryView()
  }
}

// Функции для поиска Столицы
extension CountryView {
  
  func newQuestion() {
    // Получаем случайную страну и ее столицу из отфильтрованного словаря
    let (country, capital) = dictionary.randomElement()!
    currentCountry = country
    currentCapital = capital
    // Генерируем три варианта ответа
    answerOptions = answerOptions(for: capital)
  }
  
  func checkAnswer(_ answer: String) {
    if answer == currentCapital {
      // Ответ правильный, увеличиваем счетчик правильных ответов
      correctAnswersCount += 1
      // Генерируем новый вопрос
      newQuestion()
    } else {
      // Показываем сообщение
      wrongAnswersCount += 1
      let message = "Неправильно! Правильный ответ: \(currentCapital)"
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
  
  func answerOptions(for capital: String) -> [String] {
    var options = [capital]
    while options.count < 3 {
      // Выбираем случайную страну из словаря
      let randomKey = dictionary.keys.randomElement()!
      // Проверяем, что выбранная столица не совпадает с правильным ответом и не повторяется среди вариантов ответа
      if dictionary[randomKey] != capital && !options.contains(dictionary[randomKey]!) {
        options.append(dictionary[randomKey]!)
      }
    }
    return options.shuffled()
  }
  
}


