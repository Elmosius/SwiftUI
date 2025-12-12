//
//  ColorPicker.swift
//  dasar
//
//  Created by Elmosius Suli on 12/12/25.
//

import SwiftUI

struct ColorPickerDemo: View {
    
    @State var backgroundColor: Color = .white
    
    var body: some View {
        NavigationView {
            ZStack{
                backgroundColor.ignoresSafeArea()
                
                ColorPicker("Select a color:", selection: $backgroundColor, supportsOpacity: true)
                    .padding()
                    .background(.black)
                    .foregroundStyle(.white)
                    .cornerRadius(20)
            }
            
            .padding()
            .navigationBarTitle("Color Picker")
        }
    }
}

#Preview {
    ColorPickerDemo()
}
