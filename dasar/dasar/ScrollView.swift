//
//  ScrollView.swift
//  dasar
//
//  Created by Elmosius Suli on 01/12/25.
//

import SwiftUI

struct ScrollViewDemo: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            LazyVStack {
                ForEach(0..<100) { _ in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack{
                            ForEach(0..<100){ _ in
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .frame(width: 100,height: 100)
                                    .shadow(radius: 5)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewDemo()
}
