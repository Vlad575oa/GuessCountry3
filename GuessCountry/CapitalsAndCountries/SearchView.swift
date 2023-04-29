//
//  SearchView.swift
//  GuessCountry
//
//  Created by user on 27.04.2023.
//

import SwiftUI

struct SearchView: View {
  var array = CountriesAndCapitals().countryAndCapital

  @State private var searchText = ""
  @State private var filteredArray = CountriesAndCapitals().countryAndCapital

  func filteredResults(for searchQuery: String) -> [CountryCapital] {
    if searchQuery.isEmpty {
      return array // return the original array if the search query is empty
    } else {
      // Filter the array to include only the elements whose country or capital contains the search query
      let filteredArray = array.filter { countryCapital in
        let lowercaseSearchQuery = searchQuery.lowercased()
        let lowercaseCountry = countryCapital.country.lowercased()
        let lowercaseCapital = countryCapital.capital.lowercased()
        return lowercaseCountry.contains(lowercaseSearchQuery) || lowercaseCapital.contains(lowercaseSearchQuery)
      }
      return filteredArray
    }
  }

  var body: some View {
    VStack {
      TextField("  Найти страну или столицу", text: $searchText)
        .padding(.vertical, 5)
        .background(.white)
        .cornerRadius(10)
        .padding(.horizontal, 20)

      List(filteredResults(for: searchText)) { countryCapital in
        Text("\(countryCapital.country) - \(countryCapital.capital)")
         
          .background(Color.white)
          .cornerRadius(15)
      }
      .listStyle(.plain)
      .listRowBackground(Color.pink)
      .cornerRadius(15)
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
