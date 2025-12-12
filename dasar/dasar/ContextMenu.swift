//
//  ContextMenu.swift
//  dasar
//
//  Created by Elmosius Suli on 12/12/25.
//

import SwiftUI

struct ContextMenu: View {
    
    @State var backgroundColor: Color = .black
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Image(systemName: "house.fill")
            
            Text("Hello, World!")
            Text("How to use Context Menu")
            
        }
        .foregroundStyle(.white)
        .padding(20)
        .background(backgroundColor)
        .cornerRadius(20)
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .orange
            } label: {
                Text("Report Post")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack{
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.red)
                }
            }

        }
    }
}

#Preview {
    ContextMenu()
}
