//
//  Measurment.swift
//  Units
//
//  Created by Chris Jeane on 5/30/15.
//  Copyright (c) 2015 Chris Jeane. All rights reserved.
//

import Foundation

public struct Measurement<T: UnitCategory> {
    public let value: Double
    public let unit: UnitCategory
    
    public init(value: Double, unit: UnitCategory) {
        self.value = value
        self.unit = unit
    }
    
    public func toUnit(unit: UnitCategory) -> Measurement? {
        if let targetUnit = unit as? T {
            let baseUnitValue = value * self.unit.baseUnitConversionFactor()
            let targetUnitVale = baseUnitValue / targetUnit.baseUnitConversionFactor()
            return Measurement(value: targetUnitVale, unit: targetUnit)
        } else {
            return nil
        }
    }
}
