//
//  Grid.swift
//  dasar
//
//  Created by Elmosius Suli on 01/12/25.
//

import SwiftUI

struct Grid: View {
    let columns = [
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 10, alignment: nil),
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: nil,
                pinnedViews: []
            ){
                Section(
                    header: Text("Section 1"),
                    footer: Text("Load more...")
                ){
                    ForEach(0..<51) { index in
                        Rectangle()
                            .fill(.blue)
                            .frame(height: 150)
                            .overlay(Text("\(index)"))
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    Grid()
}
