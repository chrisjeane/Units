//
//  TimeTests.swift
//  Units
//
//  Created by Chris Jeane on 5/31/15.
//  Copyright (c) 2015 Chris Jeane. All rights reserved.
//

import UIKit
import XCTest
import Units

class TimeTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMinuteToSecondConversion() {
        let minutes = Measurement<Time>(value: 1, unit: Time.Minute)
        if let seconds = minutes.toUnit(Time.Second) {
            XCTAssert(seconds.value == 60, "Expected Seconds to be 60, but was \(seconds.value)")
        } else {
            XCTAssert(false, "Did not convert meters to seconds")
        }
    }

    func testDaysToYearConversion() {
        let days = Measurement<Time>(value: 178, unit: Time.Day)
        if let years = days.toUnit(Time.Year) {
            XCTAssert(years.value == 0.5, "Expected Seconds to be 0.5, but was \(years.value)")
        } else {
            XCTAssert(false, "Did not convert meters to years")
        }
    }
    
    func testConversionBetweenUnitCategories() {
        let minutes = Measurement<Time>(value: 12, unit: Time.Minute)
        if let miles = minutes.toUnit(Length.Mile) {
            XCTFail("Conversion between Unit Categories is not allowed")
        } else {
            // Success
        }
    }
}
