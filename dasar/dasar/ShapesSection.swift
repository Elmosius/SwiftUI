//
//  ShapesSection.swift
//  dasar
//
//  Created by Elmosius Suli on 25/11/25.
//

import SwiftUI

struct ShapesSection: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(.blue)
//            .foregroundStyle(.green)
//            .stroke()
//            .stroke(Color.blue, lineWidth: 30)
//            .stroke(Color.black, style: StrokeStyle(
//                lineWidth: 20, lineCap: .round, dash: [20]
//            ))
//            .trim(from: 0.1, to: 1.0)
//            .stroke(Color.purple, lineWidth: 10)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesSection()
}
