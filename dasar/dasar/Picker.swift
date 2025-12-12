//
//  Picker.swift
//  dasar
//
//  Created by Elmosius Suli on 12/12/25.
//

import SwiftUI

struct PickerDemo: View {
    
    @State var selection: Int = 1
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Text("Age")
                    Text("\(selection)")
                }
                
                Picker(selection: $selection) {
                    ForEach(0..<10, id: \.self) { number in
                        Text("\(number)")
                            .font(.headline)
                            .foregroundStyle(.blue)
                            .tag(number)
                    
                    }
                } label: {
                    Text("Picker")
                }
                .pickerStyle(.segmented)
//                .pickerStyle(.inline)
            }
            .padding()
            .navigationTitle("Picker")
        }
    }
}

#Preview {
    PickerDemo()
}
