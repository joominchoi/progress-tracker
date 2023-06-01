//
//  AddRecordView.swift
//  ProgressTracker
//
//  Created by JooMin Choi on 01/06/2023.
//

import SwiftUI

struct AddRecordView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State private var searchText = ""
    
    @State private var name = ""
    @State private var result = 10
    @State private var date = Date.now
    @State private var notes = ""
    
    let movements = ["Squat", "Deadlift", "Bench Press"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Type of movement", selection: $name) {
                        ForEach(movements, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.navigationLink)
                    
                    LabeledContent {
                        TextField("kg", value: $result, format: .number)
                            .multilineTextAlignment(.trailing)
                    } label: {
                        Text("Result")
                    }
                    
                    DatePicker("Date completed", selection: $date, displayedComponents: .date)
                }
                
                Section {
                    ZStack(alignment: .topLeading) {
                        
                        if notes.isEmpty {
                            Text("Enter any notes here...")
                                .foregroundColor(Color(UIColor.placeholderText))
                                .padding(.top, 8)
                        }
                        
                        TextEditor(text: $notes)
                            .padding(.horizontal, -4)
                        
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.body)
                } header: {
                    Text("Notes")
                }
                
                Section {
                    Button("Save") {
                        let newRecord = Record(context: moc)
                        newRecord.id = UUID()
                        newRecord.name = name
                        newRecord.result = Int16(result)
                        newRecord.date = date
                        newRecord.notes = notes
                        
                        try? moc.save()
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add record")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct AddRecordView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecordView()
    }
}
