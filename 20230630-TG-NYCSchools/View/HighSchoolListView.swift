//
//  HighSchoolListView.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 6/30/23.
//

import SwiftUI

struct HighSchoolListView: View {
    @StateObject private var viewModel = HighSchoolsViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.highSchools.isEmpty {
                    ProgressView()
                } else {
                    List(viewModel.highSchools, id: \.dbn) { highSchool in
                        NavigationLink(destination: SchoolDetailView(dbn: highSchool.dbn ?? "nil")) {
                            Text(highSchool.school_name ?? "nil")
                        }
                    }
                }
            }
            .navigationTitle("NYC High Schools")
            .onAppear {
                viewModel.fetchHighSchools()
            }
            .ignoresSafeArea(edges: .bottom)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HighSchoolListView_Previews: PreviewProvider {
    static var previews: some View {
        HighSchoolListView()
    }
}
