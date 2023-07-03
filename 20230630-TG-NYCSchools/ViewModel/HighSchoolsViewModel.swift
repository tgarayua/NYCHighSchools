//
//  HighSchoolsViewModel.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 6/30/23.
//

import Foundation

class HighSchoolsViewModel: ObservableObject {
    @Published var highSchools: [HighSchool] = [] // Array to store the list of high schools
    @Published var searchQuery = "" // String property to store the search query entered by the user

    var filteredSchools: [HighSchool] {
        // Computed property to filter the high schools based on the search query
        guard !searchQuery.isEmpty else {
            return highSchools // Return all high schools if the search query is empty
        }
        return highSchools.filter { $0.school_name?.contains(searchQuery) ?? false }
        // Return the high schools whose school_name contains the search query
    }

    func fetchHighSchools() {
        // Function to fetch the list of high schools from the network
        NetworkManager.shared.fetchHighSchools { [weak self] highSchools in
            DispatchQueue.main.async {
                self?.highSchools = highSchools ?? [] // Update the highSchools array with the fetched data
            }
        }
    }
}
