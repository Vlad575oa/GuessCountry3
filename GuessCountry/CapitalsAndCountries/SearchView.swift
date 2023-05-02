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

  var body: some View {
    VStack(spacing: 20) {
      TextField(NSLocalizedString("Find a country or capital", comment: ""), text: $searchText)
        .foregroundColor(.black)
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(.white)
        .cornerRadius(10)
        .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
            )

      List(filteredResults(for: searchText)) { countryCapital in
        Text("\(countryCapital.country) - \(countryCapital.capital)")
          .foregroundColor(.blue)
          .background(ignoresSafeAreaEdges: .all)
          .background(.white)
      }
      .listStyle(.plain)
      .cornerRadius(15)

      Spacer()
    }
    .padding()
  }
  
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
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
    SearchView()
  }
}
