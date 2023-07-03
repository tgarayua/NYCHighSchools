//
//  HighSchoolListView.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 6/30/23.
//

import SwiftUI

struct HighSchoolListView: View {
    @StateObject private var viewModel = HighSchoolsViewModel() // Create an instance of HighSchoolsViewModel and store it in the state object

    var body: some View {
        NavigationView {
            VStack {
                if viewModel.highSchools.isEmpty {
                    ProgressView() // Show a progress view if the highSchools array is empty
                } else {
                    SearchBar(text: $viewModel.searchQuery) // Add a search bar and bind it to the search query
                    List(viewModel.filteredSchools, id: \.dbn) { highSchool in // Use the filtered array of schools
                        NavigationLink(destination: SchoolDetailView(dbn: highSchool.dbn ?? "nil")) {
                            Text(highSchool.school_name ?? "nil") // Display the school name in a text view
                        }
                    }
                }
            }
            .navigationTitle("NYC High Schools") // Set the navigation title of the view
            .onAppear {
                viewModel.fetchHighSchools() // Fetch the high schools data when the view appears
            }
            .ignoresSafeArea(edges: .bottom) // Ignore safe area insets for the bottom edge of the view
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Set the navigation view style to stack
    }
}

struct HighSchoolListView_Previews: PreviewProvider {
    static var previews: some View {
        HighSchoolListView()
    }
}
