//
//  Stacks.swift
//  dasar
//
//  Created by Elmosius Suli on 01/12/25.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 400, height: 600)
            VStack(alignment: .leading){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 180, height: 180)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                HStack(alignment: .bottom){
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 70, height: 70)
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 50, height: 50)
                }.background(Color.white)
            }.background(Color.black)
            
        }
    }
}

#Preview {
    Stacks()
}
