//
//  SATScoresViewModel.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 6/30/23.
//

import Foundation

class SATScoresViewModel: ObservableObject {
    @Published var satScores: [SATScore] = []
    
    // Fetches SAT scores using the shared instance of NetworkManager and updates the satScores property.
    func fetchSATScores() {
        NetworkManager.shared.fetchSATScores { [weak self] satScores in
            DispatchQueue.main.async {
                self?.satScores = satScores ?? []
            }
        }
    }
}
