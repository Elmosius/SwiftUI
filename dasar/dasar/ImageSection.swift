//
//  ImageSection.swift
//  dasar
//
//  Created by Elmosius Suli on 25/11/25.
//

import SwiftUI

struct ImageSection: View {
    var body: some View {
        Image("logo")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
//            .scaledToFill()
            .frame(width: 300, height: 300)
            .foregroundColor(.blue)
//            .cornerRadius(10)
//            .clipShape(
////                Circle()
////                Rectangle()
//                .capsule
//            )
    }
}

#Preview {
    ImageSection()
}
