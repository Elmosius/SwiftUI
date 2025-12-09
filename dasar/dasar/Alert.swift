//
//  Alert.swift
//  dasar
//
//  Created by Elmosius Suli on 09/12/25.
//

import SwiftUI

struct AlertDemo: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .orange
    
    var body: some View {
        ZStack{
            
            backgroundColor.ignoresSafeArea()
            
            Button("Click Here"){
                showAlert.toggle()
            }
            .alert(
                Text("Ini Title"),
                isPresented: $showAlert,
            ) {
                Button("Delete", role: .destructive) {
                    backgroundColor = .white
                }
                
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("ini deskripsi dari alert baru")
            }
        }
    }
}

#Preview {
    AlertDemo()
}
