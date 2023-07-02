//
//  SearchBar.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 7/1/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var viewModel = HighSchoolsViewModel()
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .onChange(of: text) { newValue in
                    // Perform search whenever the text changes
                    // You can add additional logic or debounce the search here if needed
                    // For simplicity, we directly modify the `text` binding in the view model
                    // However, it's recommended to move this logic to the view model itself
                    // and update the `searchText` property there
                    viewModel.searchText = newValue
                }
            
            if !text.isEmpty {
                Button(action: {
                    text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                        .padding(4)
                }
                .transition(.opacity)
                .animation(.default)
            }
        }
    }
}

//struct Sz
