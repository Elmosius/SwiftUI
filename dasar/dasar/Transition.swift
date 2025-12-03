//
//  Transition.swift
//  dasar
//
//  Created by Elmosius Suli on 03/12/25.
//

import SwiftUI

struct Transition: View {
    
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("button"){
                    withAnimation(.spring){
                        showView.toggle()
                    }
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 400)
//                    .transition(.move(edge: .bottom))
//                    .transition(.scale)
//                    .transition(.opacity)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .leading))
                    )
//                    .animation(.easeInOut, value: showView)
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    Transition()
}
