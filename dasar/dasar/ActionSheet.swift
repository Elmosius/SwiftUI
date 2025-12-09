//
//  ActionSheet.swift
//  dasar
//
//  Created by Elmosius Suli on 09/12/25.
//

import SwiftUI

struct ActionSheetDemo: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        Button("Click Me"){
            showActionSheet.toggle()
        }
        // cara baru
        .confirmationDialog(
            Text("Ini Title!"),
            isPresented: $showActionSheet,
            titleVisibility: .visible
        ) {
                Button("Cancel", role: .cancel){}
                Button("Close", role: .close){}
            
            } message: {
                Text("ini isi message!")
            }
        
        // cara lama
//        .actionSheet(isPresented: $showActionSheet) {
//            getActionSheet()
//        }
    }
    
    // cara lama
//    func getActionSheet() -> ActionSheet {
//        
//        let button1: ActionSheet.Button = .default(Text("default"))
//        let button2: ActionSheet.Button = .destructive(Text("destructive"))
//        
//        return ActionSheet(
//            title: Text("Ini Title!"),
//            message: Text("ini deskripsi pesannya"),
//            buttons: [button1,button2]
//        )
//    }
}

#Preview {
    ActionSheetDemo()
}
