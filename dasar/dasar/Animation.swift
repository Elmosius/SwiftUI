//
//  Animation.swift
//  dasar
//
//  Created by Elmosius Suli on 03/12/25.
//

import SwiftUI

struct Animation: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack(spacing: 20, content: {
            Button("Button"){
//                withAnimation(
//                    .default
//                    .delay(0.0)
//                    .repeatForever(autoreverses: true)
//                ) {
//                    isAnimated.toggle()
//                }
                isAnimated.toggle()
            }
            
            RoundedRectangle(cornerRadius: isAnimated ?  50 : 20)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .offset(x: isAnimated ? 100: 0)
                .rotationEffect(.degrees(isAnimated ? 180 : 0))
                .animation(
                    .default
                    .repeatForever(autoreverses: true),
                    value: isAnimated
                )
        })
    }
}

#Preview {
    Animation()
}
