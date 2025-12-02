//
//  Buttons.swift
//  dasar
//
//  Created by Elmosius Suli on 02/12/25.
//

import SwiftUI

struct Buttons: View {
    @State var title = "Hello button"
    var body: some View{
        
        VStack(spacing: 30){
            Text(title)
            
            Button("Press me!"){
                self.title = "I was pressed!"
            }
            
            Button(action: {
                self.title = "I was pressed too!"
            }, label: {
                Text("Click Me 2!")
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
                self.title = "I was pressed three!"
            }, label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 70, height: 70)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.9463054538, green: 0.8959511518, blue: 1, alpha: 1)))
                    )
            })
            
            Button(action: {
                self.title = "I was pressed four!"
            }, label: {
                Text("Click Me 4!")
                    .foregroundStyle(.black)
                    .background(
                        Capsule()
                            .stroke(Color.black, lineWidth: 1)
                            .frame(width: 120, height: 50)
                            .shadow(radius: 5)
                    )
            })
        }
    }
}

#Preview {
    Buttons()
}
