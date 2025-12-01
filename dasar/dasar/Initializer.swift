//
//  Initializer.swift
//  dasar
//
//  Created by Elmosius Suli on 01/12/25.
//

import SwiftUI

struct Initializer: View {
    let backgroundColor: Color
    let count: Int
    let fruit: String
    
    init(backgroundColor: Color, count: Int = 0, fruit: String) {
        self.backgroundColor = backgroundColor
        self.count = count
        self.fruit = fruit
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.title)
                .foregroundStyle(.white)
                .underline()
            Text(fruit)
                .font(.body)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 200)
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

#Preview {
    Initializer(backgroundColor: .green, fruit: "Melons")
    Initializer(backgroundColor: .orange, count: 10, fruit: "Oranges")
}
