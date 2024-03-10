//
//  Length.swift
//  Converter
//
//  Created by Margarita Mayer on 30/11/23.
//

import Foundation

class Length: ObservableObject {
    
    @Published var inputNumber: Double = 0
    @Published var inputUnit: String = "m"
    @Published var outputUnit: String = "m"
    var units = ["m", "km", "feet", "yard", "mile"]
    
    
    var outputNumber: Double {
        
        var convertToMetres = 0.0
        var resultOfConversion: Double

        switch inputUnit {
        case "m":
            convertToMetres = inputNumber
        case "km":
            convertToMetres = inputNumber * 1000
        case "feet":
            convertToMetres = inputNumber * 0.3048
        case "yard":
           convertToMetres = inputNumber * 0.9144
        case "mile":
            convertToMetres = inputNumber * 1609.34
        default:
            convertToMetres = 0.0
        }
        
        
        switch outputUnit {
        case "m":
             resultOfConversion = convertToMetres
        case "km":
            resultOfConversion = convertToMetres  * 0.001
        case "feet":
            resultOfConversion = convertToMetres * 3.28084
        case "yard":
            resultOfConversion = convertToMetres * 1.09361
        case "mile":
            resultOfConversion = convertToMetres * 0.000621371
        default:
            resultOfConversion = 0.0
        }
        
        return resultOfConversion
    }
}
