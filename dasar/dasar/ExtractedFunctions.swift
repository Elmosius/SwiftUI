//
//  ExtractedFunctions.swift
//  dasar
//
//  Created by Elmosius Suli on 02/12/25.
//

import SwiftUI

struct ExtractedFunctions: View {
    @State var backgroundColor = Color.yellow
    @State var status = false
    
    var body: some View {
        ZStack{
            // background
            backgroundColor.ignoresSafeArea(edges: .all)
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .padding()
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me!")
                    .foregroundColor(Color.white)
                    .font(.body)
                    .bold()
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Color.black
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    )
            })
        }
    }
    
    func buttonPressed(){
        status = !status
        
        status ? (backgroundColor = Color.yellow) : (backgroundColor = Color.red)
    }
}

#Preview {
    ExtractedFunctions()
}
