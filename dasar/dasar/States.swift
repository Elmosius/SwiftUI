//
//  States.swift
//  dasar
//
//  Created by Elmosius Suli on 02/12/25.
//

import SwiftUI

struct States: View {
    
    @State var backgroundColor: Color = Color.white
    @State var myTitle = "Hello"
    @State var count = 0
    
    var body: some View {
        VStack(spacing:20){
            Text(myTitle)
                .font(.title)
            Text("count : \(count)")
                .font(.body)
                .underline()
           
            Spacer().frame(height: 10)
            
            HStack(spacing: 20){
                Button(action: {
                    backgroundColor = .gray
                    myTitle = "Button 1"
                    count += 1
                }, label: {
                    Text("Button 1")
                        .foregroundColor(Color.white)
                        .font(.body)
                        .bold()
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Color.black
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        )
                })
                Button(action: {
                    backgroundColor = .red
                    myTitle = "Button 2"
                    count -= 1
                }, label: {
                    Text("Button 2")
                        .foregroundColor(Color.white)
                        .font(.body)
                        .bold()
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Color.black
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        )
                })
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            backgroundColor
        )
        
    }
}

#Preview {
    States()
}
