//
//  SystemIconsSection.swift
//  dasar
//
//  Created by Elmosius Suli on 25/11/25.
//

import SwiftUI

struct SystemIconsSection: View {
    var body: some View {
        Image(systemName: "tray.badge.fill")
            .renderingMode(.original)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
            .font(.title)
//            .font(.system(size: 100))
//            .foregroundColor(.green)
//            .frame(width: 100, height: 100)
//            .clipped()
    }
}

#Preview {
    SystemIconsSection()
}
