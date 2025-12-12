//
//  TextField.swift
//  dasar
//
//  Created by Elmosius Suli on 12/12/25.
//

import SwiftUI

struct TextFieldDemo: View {
    
    @State var text:String = ""
    @State var data:Array<String> = []
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                TextField("Type something here...", text: $text)
                //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(.orange.opacity(0.3))
                    .cornerRadius(10)
                    .foregroundStyle(.black)
                    .font(.headline)
                
                Button {
                    saveText()
                } label: {
                    Text("Save")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(textValidation() ? .blue : .gray.opacity(0.3))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }.disabled(!textValidation())
                
                List{
                    Section(header: Text("Hasil")) {
                        ForEach(data, id: \.self) { i in
                            Text(i)
                        }
                    }
                }
                
            }
            .padding()
            .navigationTitle("Text Field")
        }
    }
    
    func textValidation() -> Bool {
        if(text.count >= 3) {
            return true
        }
        
        return false
    }
    
    func saveText(){
        data.append(text)
        text = ""
    }
}

#Preview {
    TextFieldDemo()
}
