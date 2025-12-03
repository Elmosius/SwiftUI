//
//  Animationtiming.swift
//  dasar
//
//  Created by Elmosius Suli on 03/12/25.
//

import SwiftUI

struct Animationtiming: View {
    
    @State var isAnimating: Bool = false
    let timing = 10.0
    
    var body: some View {
        VStack(spacing: 20){
            
            Button("Button"){
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray)
                .frame(width: isAnimating ? 300 : 100,height: 100)
                .animation(.spring(), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray)
                .frame(width: isAnimating ? 300 : 100,height: 100)
                .animation(.linear(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray)
                .frame(width: isAnimating ? 300 : 100,height: 100)
                .animation(.easeIn(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray)
                .frame(width: isAnimating ? 300 : 100,height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray)
                .frame(width: isAnimating ? 300 : 100,height: 100)
                .animation(.easeOut(duration: timing), value: isAnimating)
        }
    }
}

#Preview {
    Animationtiming()
}
