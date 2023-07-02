//
//  _0230630_TG_NYCSchoolsTests.swift
//  20230630-TG-NYCSchoolsTests
//
//  Created by Thomas Garayua on 6/30/23.
//

import XCTest
import SwiftUI
@testable import _0230630_TG_NYCSchools

final class _0230630_TG_NYCSchoolsTests: XCTestCase {

    func testHighSchoolsViewModelFetchHighSchools() {
        let viewModel = HighSchoolsViewModel()
        let expectation = XCTestExpectation(description: "Fetch high schools")
        
        viewModel.fetchHighSchools() // Call the fetchHighSchools() method of the HighSchoolsViewModel
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { // Wait for 1 second to allow the fetching to complete
            XCTAssertFalse(viewModel.highSchools.isEmpty, "High schools should not be empty after fetching") // Assert that the highSchools array should not be empty after fetching
            expectation.fulfill() // Fulfill the expectation to indicate that the test has completed
        }
        
        wait(for: [expectation], timeout: 2) // Wait for the expectation to be fulfilled within 2 seconds
    }
    
    func testSATScoresViewModelFetchSATScores() {
        let viewModel = SATScoresViewModel()
        let expectation = XCTestExpectation(description: "Fetch SAT scores")
        
        viewModel.fetchSATScores() // Call the fetchSATScores() method of the SATScoresViewModel
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { // Wait for 1 second to allow the fetching to complete
            XCTAssertFalse(viewModel.satScores.isEmpty, "SAT scores should not be empty after fetching") // Assert that the satScores array should not be empty after fetching
            expectation.fulfill() // Fulfill the expectation to indicate that the test has completed
        }
        
        wait(for: [expectation], timeout: 2) // Wait for the expectation to be fulfilled within 2 seconds
    }
}
