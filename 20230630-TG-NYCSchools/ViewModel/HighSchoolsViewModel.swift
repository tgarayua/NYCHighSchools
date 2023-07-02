//
//  HighSchoolsViewModel.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 6/30/23.
//

import Foundation

class HighSchoolsViewModel: ObservableObject {
    @Published var highSchools: [HighSchool] = []
    
    // Fetches high schools using the shared instance of NetworkManager and updates the highSchools property.
    func fetchHighSchools() {
        NetworkManager.shared.fetchHighSchools { [weak self] highSchools in
            DispatchQueue.main.async {
                self?.highSchools = highSchools ?? []
            }
        }
    }
}
