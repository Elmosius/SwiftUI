//
//  DatePicker.swift
//  dasar
//
//  Created by Elmosius Suli on 12/12/25.
//

import SwiftUI

struct DatePickerDemo: View {
    
    @State var selectedDate:Date = .now
    let starting: Date = Calendar.current.date(from: .init(
        year: 1800,
    )) ?? .now
    
    let ending: Date = .now
    
    var body: some View {
        NavigationView{
            VStack{
//                DatePicker("Select a Date", selection: $selectedDate)
//                DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date])
                DatePicker("Select a Date", selection: $selectedDate, in: starting...ending, displayedComponents: [.date])
                    .datePickerStyle(.graphical)
                
                HStack{
                    Text("Date: ")
                    Text("\(selectedDate)")
                }
            }
            
            .padding()
            .navigationTitle("Date Picker")
        }
    }
}

#Preview {
    DatePickerDemo()
}
