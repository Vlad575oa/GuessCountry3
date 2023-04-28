//
//  SearchView.swift
//  GuessCountry
//
//  Created by user on 27.04.2023.
//

import SwiftUI

struct SearchView: View {
  @State private var searchText = ""

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
  var filteredResults: String {
    let filteredDictionary = self.filteredDictionary.filter { key, value in
      key.localizedCaseInsensitiveContains(searchText) || value.localizedCaseInsensitiveContains(searchText)
    }
    return filteredDictionary.map { "\($0.key) - \($0.value)" }.joined(separator: ", ")
  }
  let dictionary = CountriesAndCapitals().dictionary

  var body: some View {
    VStack {
      TextField("  Найти страну или столицу", text: $searchText)
        .padding(.vertical, 5)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal, 20)
      
      Text("\(filteredResults)")
        .padding()
      Spacer()
    }
  }
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
    SearchView()
  }
}
