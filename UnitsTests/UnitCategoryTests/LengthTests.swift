//
//  SILengthTests.swift
//  Units
//
//  Created by Chris Jeane on 5/27/15.
//  Copyright (c) 2015 Chris Jeane. All rights reserved.
//

import UIKit
import XCTest
import Units

class SILengthTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testMeterToKilometerCoversion() {
        let meters = Measurement<Length>(value: 1, unit: Length.Meter)
        if let kilometers = meters.toUnit(Length.Kilometer) {
            XCTAssert(kilometers.value == 0.001, "Expected Kilometers to be 0.001, but was \(kilometers.value)")
        } else {
            XCTAssert(false, "Did not convert meters to kilometers")
        }
    }
    
    func testYoctometerToPicometerCoversion() {
        let yoctometers = Measurement<Length>(value: 1, unit: Length.Yoctometer)
        if let picometer = yoctometers.toUnit(Length.Picometer) {
            XCTAssert(picometer.value == 1.0E-12, "Expected Picometers to be 1.0E-12, but was \(picometer.value)")
        } else {
            XCTAssert(false, "Did not convert Yoctometers to Picometers")
        }
    }
}
