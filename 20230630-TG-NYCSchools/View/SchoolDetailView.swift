//
//  SchoolDetailView.swift
//  20230630-TG-NYCSchools
//
//  Created by Thomas Garayua on 6/30/23.
//

import SwiftUI

struct SchoolDetailView: View {
    let dbn: String
    @StateObject private var viewModel = SATScoresViewModel()
    
    var body: some View {
        VStack {
            Text("SAT Scores")
                .font(.title)
                .padding()
            
            if let satScore = viewModel.satScores.first(where: { $0.dbn == dbn }) {
                VStack(alignment: .leading) {
                    Text("School Name: \(satScore.school_name ?? "SchoolDetailView nil")")
                    Text("SAT Test Takers: \(satScore.num_of_sat_test_takers ?? "SchoolDetailView nil")")
                    Text("Math: \(satScore.sat_math_avg_score ?? "SchoolDetailView nil")")
                    Text("Reading: \(satScore.sat_critical_reading_avg_score ?? "SchoolDetailView nil")")
                    Text("Writing: \(satScore.sat_writing_avg_score ?? "SchoolDetailView nil")")
                }
            } else {
                Text("No SAT scores available.")
            }
        }
        .onAppear {
            viewModel.fetchSATScores()
        }
        .ignoresSafeArea() // Ignore safe area insets for the entire view
    }
}
struct SchoolDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolDetailView(dbn: "01M448")
    }
}
