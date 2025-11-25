//
//  ColorSection.swift
//  dasar
//
//  Created by Elmosius Suli on 25/11/25.
//

import SwiftUI

struct ColorSection: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 0.6891739964, green: 0.7519060373, blue: 1, alpha: 1))
//                Color(uiColor: UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 100, height: 100)
            .shadow(color: Color("CustomColor"), radius: 10, x: -5, y:-5)
    }
}

#Preview {
    ColorSection()
}
