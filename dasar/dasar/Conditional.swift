//
//  Conditional.swift
//  dasar
//
//  Created by Elmosius Suli on 03/12/25.
//

import SwiftUI

struct Conditional: View {
    
    @State var showCircle: Bool = false
    var body: some View {
        VStack(spacing: 20){
            Button("circle button: \(showCircle.description)"){
                showCircle = !showCircle
            }
            
            if(showCircle){
                Circle()
                    .frame(width: 100, height: 100)
            }else{
                Rectangle()
                    .frame(width: 100,height: 100)
            }
        }
    }
}

#Preview {
    Conditional()
}
