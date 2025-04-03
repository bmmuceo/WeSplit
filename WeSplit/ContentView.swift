//
//  ContentView.swift
//  WeSplit
//
//  Created by RyanA on 4/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOFPeople = 2
    @State private var tipPercentage = 20
    
    let tippercentages = [10, 15, 20, 25, 0]
    
    
    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                Picker("Number of People", selection: $numberOFPeople) {
                    ForEach(2..<100) {
                        Text("\($0) people")
                    }
                }
            }
    
            Section {
                Text(checkAmount, format: .currency(code:
                    Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

#Preview {
    ContentView()
}
