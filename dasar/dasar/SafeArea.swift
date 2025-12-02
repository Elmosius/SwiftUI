//
//  SafeArea.swift
//  dasar
//
//  Created by Elmosius Suli on 02/12/25.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        ScrollView(){
            VStack{
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10){i in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .frame(width: 250, height: 250)
                        .shadow(radius: 10)
                }
            }
        }
        .background(
            Color.blue
        )
        .background(
            Color.red
                .ignoresSafeArea(.all)
        )
    }
}

#Preview {
    SafeArea()
}
