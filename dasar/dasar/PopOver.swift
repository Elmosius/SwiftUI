//
//  PopOver.swift
//  dasar
//
//  Created by Elmosius Suli on 09/12/25.
//

import SwiftUI


// sheets
// animations
// transitions

struct PopOver: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
            VStack{
                Button("Button"){
                    showNewScreen.toggle()
                }
            }
            // method 1
            //            .sheet(isPresented: $showNewScreen){
            //                NewScreen()
            //            }
            
            // method 2
//            VStack{
//                if(showNewScreen){
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 60)
//                        .transition(.move(edge: .bottom))
//                }
//            }.animation(.spring, value: showNewScreen)
            
            // method 3
            GeometryReader { geo in
                VStack {
                    NewScreen(showNewScreen: $showNewScreen)
                        .padding(.top, 60)
                        .offset(y: showNewScreen ? 0 : geo.size.height)
                        .animation(.spring, value: showNewScreen)
                }
            }
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.yellow.ignoresSafeArea()
            
            Button(action: {
//                dismiss()
                showNewScreen.toggle()
            }) {
                Image(systemName: "xmark")
                    .font(.body)
                    .padding(.all, 30)
            }
            
        }
    }
}

#Preview {
//    NewScreen()
    PopOver()
}
