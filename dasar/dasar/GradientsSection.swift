//
//  GradientsSection.swift
//  dasar
//
//  Created by Elmosius Suli on 25/11/25.
//

import SwiftUI

struct GradientsSection: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(
//                LinearGradient(colors: [Color(#colorLiteral(red: 0.5382470489, green: 0.4540243745, blue: 0.7774890065, alpha: 1)), Color(#colorLiteral(red: 0.585196197, green: 0.4936341643, blue: 0.8452847004, alpha: 0.5517440581))], startPoint: .topLeading, endPoint: .bottom)
//                RadialGradient(colors: [Color(#colorLiteral(red: 0.5382470489, green: 0.4540243745, blue: 0.7774890065, alpha: 1)), Color(#colorLiteral(red: 0.585196197, green: 0.4936341643, blue: 0.8452847004, alpha: 0.5517440581))], center: .topLeading, startRadius: 10, endRadius: 400)
//            )
                AngularGradient(colors: [Color.red, Color.blue], center: .topLeading, angle: .degrees(180))
        )
            .frame(width: 300, height: 200, alignment: .center)
    }
}

#Preview {
    GradientsSection()
}
