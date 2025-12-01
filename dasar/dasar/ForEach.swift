//
//  ForEach.swift
//  dasar
//
//  Created by Elmosius Suli on 01/12/25.
//

import SwiftUI

struct ForEachDemo: View {
    let data = ["a", "b", "c"]
    let myString = "Hello"
    
    var body: some View {
        VStack{
            ForEach(data.indices){ index in
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 50, height: 50)
                    Text("index: \(index)")
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
            }
        }
    }
}


#Preview {
    ForEachDemo()
}
