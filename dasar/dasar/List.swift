//
//  List.swift
//  dasar
//
//  Created by Elmosius Suli on 09/12/25.
//

import SwiftUI

struct ListDemo: View {
    
    @State var fruits: [String] = ["apple", "orange", "banana"]
    @State var veggies: [String] = ["carrot", "potato", "tomato"]
    
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("Fruits")){
                    ForEach(fruits, id: \.self){ i in
                        Text(i.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                Section(header: Text("Veggies")){
                    ForEach(veggies, id: \.self){ i in
                        Text(i.capitalized)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Supermarket")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
    }
    
    var addButton: some View {
        Button(action: {
            fruits.append("static dummy")
        }, label: {Text("Add")})
    }
    
    func move(indexSet: IndexSet, int: Int){
        fruits.move(fromOffsets: indexSet, toOffset: int)
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    ListDemo()
}
