//
//  Sheets.swift
//  dasar
//
//  Created by Elmosius Suli on 03/12/25.
//

import SwiftUI

struct Sheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            Button("Hello"){
                showSheet.toggle()
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(width: 100,height: 50)
                    .padding()
            )
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
//                // jnagan taruh logic di sini!
//                SecondScreen()
//            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.white.ignoresSafeArea()
            
            VStack(alignment: .leading){
                Button(action: {
                    dismiss()
                },
                       label: {
                    Image(systemName: "xmark")
                        .font(.body)
                        .foregroundStyle(.red)
                        .padding(.all, 20)
                })
            }
        }
    }
}

#Preview {
    Sheets()
//    SecondScreen()
}
