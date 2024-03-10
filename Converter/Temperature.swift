//
//  Temperature.swift
//  Converter
//
//  Created by Margarita Mayer on 30/11/23.
//

import Foundation

class Temperature: ObservableObject {
    
    @Published var inputNumber: Double = 0
    @Published var inputUnit: UnitTemperature = .celsius
    @Published  var outputUnit: UnitTemperature = .fahrenheit
    

    let temperatures: [UnitTemperature] = [.celsius, .fahrenheit, .kelvin]
     
    var result: Double {
        let measure = Measurement(value: inputNumber, unit: inputUnit)
        let result = measure.converted(to: outputUnit)
        return result.value
    }
}

