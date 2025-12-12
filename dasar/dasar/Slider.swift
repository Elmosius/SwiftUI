//
//  Slider.swift
//  dasar
//
//  Created by Elmosius Suli on 12/12/25.
//

import SwiftUI

struct SliderDemo: View {
    
    @State var sliderValue: Double = 0.0
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Slider: \(String(format: "%.2f", sliderValue))")
                Slider(value: $sliderValue)
                Slider(value: $sliderValue, in: 0...100)
                Slider(value: $sliderValue, in: 1...5, step: 1)
                
                Slider(value: $sliderValue,
                   in: 0...100,
                   label: {
                        Text("slider 4:")
                    },
                   minimumValueLabel: {
                    Text("0")
                }, maximumValueLabel: {
                    Text("200")
                })
                
            }
            .padding()
            .navigationTitle(Text("Slider"))
        }
    }
}

#Preview {
    SliderDemo()
}
