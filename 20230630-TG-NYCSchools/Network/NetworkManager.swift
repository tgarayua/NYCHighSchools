//
//  NetworkManager.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 6/30/23.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    
    // Fetches high schools data from the specified URL and performs completion with an optional array of HighSchool objects.
    func fetchHighSchools(completion: @escaping ([HighSchool]?) -> Void) {
        guard let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error fetching high schools:", error.localizedDescription)
                completion(nil)
                return
            }
            
            if let data = data {
                do {
                    let highSchools = try JSONDecoder().decode([HighSchool].self, from: data)
                    completion(highSchools)
                } catch {
                    print("Error decoding high schools data:", error.localizedDescription)
                    completion(nil)
                }
            } else {
                completion(nil)
            }
        }.resume()
    }
    
    // Fetches SAT scores data from the specified URL and performs completion with an optional array of SATScore objects.
    func fetchSATScores(completion: @escaping ([SATScore]?) -> Void) {
        guard let url = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error fetching SAT scores:", error.localizedDescription)
                completion(nil)
                return
            }
            
            if let data = data {
                do {
                    let satScores = try JSONDecoder().decode([SATScore].self, from: data)
                    completion(satScores)
                } catch {
                    print("Error decoding SAT scores data:", error.localizedDescription)
                    completion(nil)
                }
            } else {
                completion(nil)
            }
        }.resume()
    }
}
