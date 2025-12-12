//
//  Stepper.swift
//  dasar
//
//  Created by Elmosius Suli on 12/12/25.
//

import SwiftUI

struct StepperDemo: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
        
    var body: some View {
        NavigationView{
            VStack{
                Stepper("Stepper \(stepperValue)", value: $stepperValue)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 100 + widthIncrement, height: 100)
                    .animation(.spring, value: widthIncrement)
                
                Stepper("Stepper 2 \(widthIncrement)") {
                   widthIncrement += 10
                } onDecrement: {
                    widthIncrement -= 10
                }

            }
            .padding()
            .navigationTitle("Stepper")
        }
    }
}

#Preview {
    StepperDemo()
}
