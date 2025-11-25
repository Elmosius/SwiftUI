//
//  TextSection.swift
//  dasar
//
//  Created by Elmosius Suli on 25/11/25.
//

import SwiftUI

struct TextSection: View {
    var body: some View {
        Text("Hello, ios! ini hari pertama belajar SwiftUI".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.blue)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(10)
//            .kerning(10)
            .foregroundColor(.red)
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 100, alignment: .leading)
    }
}

#Preview {
    TextSection()
}
