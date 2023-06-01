//
//  RecordsView.swift
//  ProgressTracker
//
//  Created by JooMin Choi on 01/06/2023.
//

import SwiftUI

struct RecordsView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var records: FetchedResults<Record>
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationView{
            Text("Count: \(records.count)")
                .navigationTitle("Records")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showingAddScreen.toggle()
                        } label: {
                            Label("Add Record", systemImage: "plus")
                        }
                    }
                }
                .sheet(isPresented: $showingAddScreen) {
                    AddRecordView()
                }
            
        }
    }
}

struct RecordsView_Previews: PreviewProvider {
    static var previews: some View {
        RecordsView()
    }
}
