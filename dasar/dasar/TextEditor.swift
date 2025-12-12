//
//  TextEditor.swift
//  dasar
//
//  Created by Elmosius Suli on 12/12/25.
//

import SwiftUI

struct TextEditorDemo: View {
    
    @State var text: String = "Ini text awal"
    @State var savedText:String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center){
                TextEditor(text: $text)
                    .foregroundStyle(.black)
//                    .colorMultiply(.gray)
                
                Button(action: {
                    savedText = text
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(10)

                })
                
                Text(savedText)
                
            }
            .padding()
            .background(.gray.opacity(0.2))
            .cornerRadius(10)
            .navigationTitle("Text Editor")
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    TextEditorDemo()
}
