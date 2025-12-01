//
//  BackgroundAndOverlay.swift
//  dasar
//
//  Created by Elmosius Suli on 01/12/25.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.title)
            .foregroundStyle(Color.white)
            .background(
                RoundedRectangle(cornerRadius: 40)
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                    .shadow(color: .blue ,radius: 10, x: 5, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
                            .frame(width: 25, height: 25)
                            .overlay(
                                Text("2")
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                            )
                        ,
                        alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlay()
}
