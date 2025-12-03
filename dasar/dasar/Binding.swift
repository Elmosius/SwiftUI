//
//  Binding.swift
//  dasar
//
//  Created by Elmosius Suli on 03/12/25.
//

import SwiftUI

struct BindingDemo: View {
    
    @State var backgroundColor: Color = .yellow
    @State var title = "Title"
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea(.all)
            
            VStack{
                Text(title)
                    .foregroundColor(.black)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View{
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue
    
    var body: some View{
        Button(action: {
            backgroundColor = .white
            buttonColor = .black
            title = "New Title"
        }, label: {
            Text("Change Color")
                .font(.body)
                .foregroundColor(.white)
                .padding()
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BindingDemo()
}
