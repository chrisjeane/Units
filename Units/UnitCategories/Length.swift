//
//  Length.swift
//  Units
//
//  Created by Chris Jeane on 5/27/15.
//  Copyright (c) 2015 Chris Jeane. All rights reserved.
//

import Foundation

public enum Length: UnitCategory {
    // SI Units
    case Yoctometer
    case Zeptometer
    case Attometer
    case Femtometer
    case Picometer
    case Nanometer
    case Micrometer
    case Millimeter
    case Centimeter
    case Decimeter
    case Meter
    case Decameter
    case Hectometer
    case Kilometer
    case Megameter
    case Gigameter
    case Terameter
    case Petameter
    case Exameter
    case Zettameter
    case Yottameter
    
    // Other SI
    case Fermi
    case Angstrom
    case Micron
    case Myriametre
    
    // Imperial
    case Inch
    case Foot
    case Yard
    case Mile
    case League
    
    // Marine
    case Fathom
    case NauticalMile
    
    // Astronomy
    case AstronomicalUnit
    case LightYear
    case Parsec
    
    public func baseUnitConversionFactor() -> Double {
        switch self {
        // SI
        case .Yoctometer:
            return 1.0e-24
        case .Zeptometer:
            return 1.0e-21
        case .Attometer:
            return 1.0e-18
        case .Femtometer:
            return 1.0e-15
        case .Picometer:
            return 1.0e-12
        case .Nanometer:
            return 1.0e-9
        case .Micrometer:
            return 1.0e-6
        case .Millimeter:
            return 1.0e-3
        case .Centimeter:
            return 1.0e-2
        case .Decimeter:
            return 1.0e-1
        case .Meter:
            return 1.0e0
        case .Decameter:
            return 1.0e1
        case .Hectometer:
            return 1.0e2
        case .Kilometer:
            return 1.0e3
        case .Megameter:
            return 1.0e6
        case .Gigameter:
            return 1.0e9
        case .Terameter:
            return 1.0e12
        case .Petameter:
            return 1.0e15
        case .Exameter:
            return 1.0e18
        case .Zettameter:
            return 1.0e21
        case .Yottameter:
            return 1.0e24

        // SI Other
        case .Fermi:
            return Length.Femtometer.baseUnitConversionFactor()
        case .Angstrom:
            return Length.Picometer.baseUnitConversionFactor() / 100
        case .Micron:
            return Length.Micrometer.baseUnitConversionFactor()
        case .Myriametre:
            return 1.0e4
            
        // Imperial

        case .Inch:
            return 0.00254
        case .Foot:
            return 0.3048
        case .Yard:
            return 0.9144
        case .Mile:
            return 1_609.344
        case .League:
            return 4_828.032
            
        // Marine
        case .Fathom:
            return 1.8288
        case .NauticalMile:
            return 1_852
            
        // Astronomy
        case .AstronomicalUnit:
            return 149597_870_700
        case .LightYear:
            return 9_460_730_472_580_800
        case .Parsec:
            return 30_856_775_814_671_900
        }
    }
}
