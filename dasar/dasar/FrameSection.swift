//
//  FrameSection.swift
//  dasar
//
//  Created by Elmosius Suli on 25/11/25.
//

import SwiftUI

struct FrameSection: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(height: 100, alignment: .topLeading)
            .background(Color.green)
            .frame(width: 100)
            .background(Color.blue)
            .frame(maxWidth: 150)
            .background(Color.accentColor)
            .frame(maxHeight: 150, alignment: .leading)
            .background(Color.yellow)
            .frame(width: 450, alignment: .trailing)
            .background(Color.primary)
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .background(Color.secondary)
        
    }
}

#Preview {
    FrameSection()
}
