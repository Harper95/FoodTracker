//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Clayton Harper on 2/9/16.
//  Copyright © 2016 Clayton Harper. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // Mark: FoodTracker Tests
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitilization() {
        // Success case.
        let potentialItem = meal(name: "test meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure case.
        let noName = meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty Name is invalid")
        
        let badRating = meal(name: "test", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be posititve")
    }
}
