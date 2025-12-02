//
//  ExtractedSubviews.swift
//  dasar
//
//  Created by Elmosius Suli on 02/12/25.
//

import SwiftUI

struct ExtractedSubviews: View {
    
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center){
                
                ForEach(0..<3){ i in
                        MyItem(title: "Apple", count: 1, color: Color.red)
                        
                        MyItem(title: "Orange", count: 1, color: Color.orange)
                        
                        MyItem(title: "Banana", count: 1, color: Color.yellow)
                    }
            }
        }
    }
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View{
        VStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                .frame(width: 150, height: 150)
                .shadow(radius: 5)
                .overlay(
                    VStack{
                        Text(title)
                        Text("\(count)")
                    }
                    .foregroundColor(.white)
                )
        }
    }
}

#Preview {
    ExtractedSubviews()
}
