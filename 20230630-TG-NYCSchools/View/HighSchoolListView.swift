//
//  HighSchoolListView.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 6/30/23.
//

import SwiftUI

struct HighSchoolListView: View {
    @StateObject private var viewModel = HighSchoolsViewModel()
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Check if the highSchools array in the viewModel is empty
                if viewModel.highSchools.isEmpty {
                    ProgressView() // Display a progress view if the array is empty
                } else {
                    List(viewModel.highSchools, id: \.dbn) { highSchool in
                        NavigationLink(destination: SchoolDetailView(dbn: highSchool.dbn ?? "nil")) {
                            Text(highSchool.school_name ?? "nil") // Display the school name as a text and navigates user to the SchoolDetailView
                        }
                    }
                }
            }
            .navigationTitle("NYC High Schools") // Set the navigation title
            .onAppear {
                viewModel.fetchHighSchools() // Fetch the high schools when the view appears
            }
            .ignoresSafeArea(edges: .bottom) // Ignore safe area insets at the bottom
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Apply stack navigation style
    }
}

struct HighSchoolListView_Previews: PreviewProvider {
    static var previews: some View {
        HighSchoolListView()
    }
}
