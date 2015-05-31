## Units
Units is a libaray that manages percision and conversion between unites of measurments.

## Example

    let meters = Measurement<Length>(value: 1, unit: Length.Meter)
    if let kilometers = meters.toUnit(Length.Kilometer) {
        println("\(kilometers.value) kilometers in \(meters.value) meters")
    } else {
        println("Conversion Failed")
    }

## Supported Units

### Length
- SI Units
    - meter
    - decameter 
    - hectometer
    - kilometer
    - megameter
    - gigameter
    - terameter
    - petameter
    - exameter
    - zettameter
    - yottameter
    - decimeter
    - centimeter
    - millimeter
    - micrometer
    - nanometer
    - picometer
    - femtometer
    - attometer
    - zeptometer
    - yoctometer
    - fermi
    - àngström
    - micron
    - myriametre
- Imperial
    - inch
    - foot
    - yard
    - mile
    - league
- Marine
    - fathom
    - nautical mile
- Astronomy
    - Astronomical Unit
    - light year
    - parsec

### Time
- Second
- Minutes
- Hour
- Day
- Year
