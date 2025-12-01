//
//  PaddingAndSpacer.swift
//  dasar
//
//  Created by Elmosius Suli on 01/12/25.
//

import SwiftUI

struct PaddingAndSpacer: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Lorem ipsum")
                .font(.title)
            
            Spacer()
                .frame(height: 10)
            
            Text("Lorem ipsum asd asklksinnn paskda askda asdjadad")
                .font(.body)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
            .cornerRadius(10)
            .shadow(radius: 5)
        )
    }
}

#Preview {
    PaddingAndSpacer()
}
