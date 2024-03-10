//
//  ContentView.swift
//  Converter
//
//  Created by Margarita Mayer on 30/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var temperature = Temperature()
    @StateObject var length = Length()
    
    
    var body: some View {
        NavigationStack {
            Form {
                
                Section("Length") {
                    TextField("Insert a number", value: $length.inputNumber, format: .number)
                        .keyboardType(.decimalPad)
                    
                    Picker("Choose a unit", selection: $length.inputUnit) {
                        ForEach(length.units, id: \.self) {
                            Text($0)
                        }
                        
                    }
                    .pickerStyle(.segmented)
                    
                    Picker("Choose a unit", selection: $length.outputUnit) {
                        ForEach(length.units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Text(length.outputNumber.formatted())
                    
                }
                
                
                Section("Temperature") {
                    
                    TextField("Insert a number", value: $temperature.inputNumber, format: .number)
                        .keyboardType(.decimalPad)
                    
                    Picker("Choose a unit", selection: $temperature.inputUnit) {
                        ForEach(temperature.temperatures, id: \.self) {
                            Text($0.symbol)
                        }
                        
                    }
                    .pickerStyle(.segmented)
                    
                    Picker("Choose a unit", selection: $temperature.outputUnit) {
                        ForEach(temperature.temperatures, id: \.self) {
                            Text($0.symbol)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Text(temperature.result.formatted())
                    
                    
                    
                }
                
                
                
                   
        
            }
            .navigationTitle("Converter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
