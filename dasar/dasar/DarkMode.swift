//
//  DarkMode.swift
//  dasar
//
//  Created by Elmosius Suli on 19/12/25.
//

import SwiftUI

struct DarkMode: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 10){
                    Text("this text is primary")
                        .foregroundStyle(.primary)
                    Text("this text is secondary")
                        .foregroundStyle(.secondary)
                    Text("this is black")
                        .foregroundStyle(.black)
                    Text("this is black")
                        .foregroundStyle(.white)
                    Text("this is global adaptive")
                        .foregroundStyle(Color("AdaptiveColor"))
                    Text("this is local adaptive")
                        .foregroundStyle(colorScheme == .light ? .blue : .yellow)
                }
            }
            .navigationTitle("Dark mode")
        }
    }
}

#Preview {
    DarkMode()
}
