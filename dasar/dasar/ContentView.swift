//
//  ContentView.swift
//  dasar
//
//  Created by Elmosius Suli on 25/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, everyone!").font(.title).fontWeight(.black).foregroundStyle(.green)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

