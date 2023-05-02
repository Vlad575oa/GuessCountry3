//
//  SearchFlagView.swift
//  Guess сountry
//
//  Created by user on 02.05.2023.
//

import SwiftUI

struct SearchFlagView: View {

@State private var searchText = ""

private var array = Flags().flagArray
private var filteredArray = Flags().flagArray

  var body: some View {
    VStack(spacing: 20) {
      TextField(NSLocalizedString("Find a flag country", comment: ""), text: $searchText)
        .foregroundColor(.black)
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(.white)
        .cornerRadius(10)
        .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
            )
      ScrollView {
        ForEach(filteredResults(for: searchText)) { flag in
          HStack {
            Image(flag.image)
              .resizable()
              .frame(width: 50, height: 30)
            Text(flag.name)
              .foregroundColor(.black)
              .frame(maxWidth: .infinity, alignment: .leading)
          }
        }
      }

      .cornerRadius(15)

      Spacer()
    }
    .padding()
  }

  func filteredResults(for searchQuery: String) -> [FlagNames] {
    if searchQuery.isEmpty {
      return array // return the original array if the search query is empty
    } else {
      // Filter the array to include only the elements whose country or capital contains the search query
        let filteredArray = array.filter { flag in
        let lowercaseSearchQuery = searchQuery.lowercased()
          let lowercase = flag.name.lowercased()

        return lowercase.contains(lowercaseSearchQuery)
      }
      return filteredArray
    }
  }
}


struct SearchFlagView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFlagView()
    }
}
