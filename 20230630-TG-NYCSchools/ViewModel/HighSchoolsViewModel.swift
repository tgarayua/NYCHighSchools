//
//  HighSchoolsViewModel.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 6/30/23.
//

import Foundation

class HighSchoolsViewModel: ObservableObject {
    @Published var highSchools: [HighSchool] = []
    
    func fetchHighSchools() {
        NetworkManager.shared.fetchHighSchools { [weak self] highSchools in
            DispatchQueue.main.async {
                self?.highSchools = highSchools ?? []
            }
        }
    }
}
