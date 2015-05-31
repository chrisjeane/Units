//
//  Time.swift
//  Units
//
//  Created by Chris Jeane on 5/31/15.
//  Copyright (c) 2015 Chris Jeane. All rights reserved.
//

import Foundation

public enum Time: UnitCategory {
    case Second
    case Minute
    case Hour
    case Day
    case Year
    
    public func baseUnitConversionFactor() -> Double {
        switch self {
        case .Second:
            return 1
        case .Minute:
            return 60
        case .Hour:
            return Time.Minute.baseUnitConversionFactor() * 60
        case .Day:
            return Time.Hour.baseUnitConversionFactor() * 24
        case .Year:
            return Time.Day.baseUnitConversionFactor() * 356
        }
    }
}
