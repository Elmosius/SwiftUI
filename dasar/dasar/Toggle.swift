//
//  Toggle.swift
//  dasar
//
//  Created by Elmosius Suli on 12/12/25.
//

import SwiftUI

struct ToggleDemo: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $isOn) {
                    Text("Status:")
                    Text(isOn ? "Online" : "Offline")
                }
                .toggleStyle(SwitchToggleStyle(tint: .orange))
            }
            .padding()
        }
    }
}

#Preview {
    ToggleDemo()
}
