//
//  TernaryOperator.swift
//  dasar
//
//  Created by Elmosius Suli on 03/12/25.
//

import SwiftUI

struct TernaryOperator: View {
    
    @State var showRectangle: Bool = false
    @State var isStartingState: Bool = false

    var body: some View {
        VStack(spacing:20){
            Button("Show"){
                showRectangle.toggle()
            }
            
            Button("Change Color"){
                isStartingState.toggle()
            }
            
            showRectangle ? (
                RoundedRectangle(cornerRadius: 20)
                    .fill(isStartingState ? .red : .blue)
                    .frame(width: 100,height: 100)
            ) : nil
           
        }
    }
}

#Preview {
    TernaryOperator()
}
