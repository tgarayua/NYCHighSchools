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
    @State private var isShowing = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("SAT Scores")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .scaleEffect(isShowing ? 1.0 : 0.5) // Apply a scale effect to animate the title
            
            if let satScore = viewModel.satScores.first(where: { $0.dbn == dbn }) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("School Name:")
                        .font(.headline)
                        .opacity(isShowing ? 1.0 : 0.0)
                    
                    Text(satScore.school_name)
                        .font(.title)
                        .opacity(isShowing ? 1.0 : 0.0)
                    
                    Text("SAT Test Takers:")
                        .font(.headline)
                        .opacity(isShowing ? 1.0 : 0.0)
                    
                    Text("\(satScore.num_of_sat_test_takers)")
                        .font(.title)
                        .opacity(isShowing ? 1.0 : 0.0)
                    
                    Text("Avg Math:")
                        .font(.headline)
                        .opacity(isShowing ? 1.0 : 0.0)
                    
                    Text("\(satScore.sat_math_avg_score)")
                        .font(.title)
                        .opacity(isShowing ? 1.0 : 0.0)
                    
                    Text("Avg Reading:")
                        .font(.headline)
                        .opacity(isShowing ? 1.0 : 0.0)
                    
                    Text("\(satScore.sat_critical_reading_avg_score)")
                        .font(.title)
                        .opacity(isShowing ? 1.0 : 0.0)
                    
                    Text("Avg Writing:")
                        .font(.headline)
                        .opacity(isShowing ? 1.0 : 0.0)
                    
                    Text("\(satScore.sat_writing_avg_score)")
                        .font(.title)
                        .opacity(isShowing ? 1.0 : 0.0)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .opacity(isShowing ? 1.0 : 0.0) 
            } else {
                Text("No SAT scores available.")
                    .font(.title)
                    .opacity(isShowing ? 1.0 : 0.0)
            }
        }
        .padding()
        .onAppear {
            withAnimation(.easeOut) {
                isShowing = true
            }
            viewModel.fetchSATScores()
        }
        .navigationBarTitle("School Details", displayMode: .inline)
    }
}

struct SchoolDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolDetailView(dbn: "01M448")
    }
}
