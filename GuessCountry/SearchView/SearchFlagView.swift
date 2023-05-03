//
//  SearchFlagView.swift
//  Guess сountry
//
//  Created by user on 02.05.2023.
//

import SwiftUI

struct SearchFlagView: View {


  @State private var searchText = ""

  private var array = Flags()

  var body: some View {
    VStack(spacing: 20) {
      TextField(NSLocalizedString("Find the flag of the country", comment: ""), text: $searchText)
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
        LazyVStack(alignment: .leading) {
          ForEach(filteredResults(for: searchText)) { flag in
            HStack {
              Image(flag.image)
                .resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: 50, height: 30)
              Text(flag.name)
            }
          }
        }
      }
      .cornerRadius(5)

      Spacer()
    }
    .padding()
  }

  func filteredResults(for searchQuery: String) -> [FlagNames] {

    //    let emptyArray  = [FlagNames(name: "Enter name country a TextField", image: "")]
    if searchQuery.isEmpty {
      return array.flagArray // return the original array if the search query is empty
    } else {
      // Filter the array to include only the elements whose country or capital contains the search query
      let filteredArray = array.flagArray.filter { flag in
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


struct LazyFlagRowView: View {
  let flag: FlagNames

  var body: some View {
    HStack {
      Image(flag.image)
        .resizable()
        .frame(width: 50, height: 30)
      Text(flag.name)
    }
  }
}
