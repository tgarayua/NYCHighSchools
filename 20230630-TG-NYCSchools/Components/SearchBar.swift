//
//  SearchBar.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 7/2/23.
//

import Foundation
import SwiftUI

struct SearchBar: UIViewRepresentable {
    @Binding var text: String

    // Coordinator class to handle search bar delegate methods
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        // Called when the search bar text changes
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText // Update the binding with the new search text
        }
    }

    // Create and return a coordinator instance
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }

    // Create and return the underlying UISearchBar
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.delegate = context.coordinator // Set the coordinator as the search bar's delegate
        return searchBar
    }

    // Update the search bar's text when the binding value changes
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
    }
}
