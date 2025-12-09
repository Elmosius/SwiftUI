//
//  NavigationView.swift
//  dasar
//
//  Created by Elmosius Suli on 09/12/25.
//

import SwiftUI

struct NavigationViewDemo: View {
    var body: some View {
        NavigationView(){
            ScrollView {
                NavigationLink("Hello NavLink", destination: MyOtherScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("Test Navigasi Title")
            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(false)
            .navigationBarItems(
                leading: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        VStack{
                            Image(systemName: "person.fill")
                        }
                })
            )
        }
    }
}

struct MyOtherScreen: View{
    
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
                .navigationTitle("Screen 2")
                .navigationBarBackButtonHidden()
            
            VStack{
                Button("Back To Main Screen", action: {
                    dismiss()
                })
            }
            
        }
    }
}

#Preview {
    NavigationViewDemo()
}
