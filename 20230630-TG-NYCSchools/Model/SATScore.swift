//
//  SATScore.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 6/30/23.
//

import Foundation

struct SATScore: Codable {
    let dbn: String?
    let school_name: String?
    let num_of_sat_test_takers: String?
    let sat_math_avg_score: String?
    let sat_critical_reading_avg_score: String?
    let sat_writing_avg_score: String?
}
