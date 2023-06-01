//
//  RecordsView.swift
//  ProgressTracker
//
//  Created by JooMin Choi on 01/06/2023.
//

import SwiftUI

struct RecordsView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Searchbar: to filter through items")
                        .fontWeight(.bold)
                        .frame(
                            maxWidth: .infinity,
                            alignment: .leading
                        )
                    Text("List of exercises / movements\nName of exercise - PB: Clickable to expand into list of all entries and date")
                        .frame(
                            maxWidth: .infinity,
                            alignment: .leading
                        )

                }
                .navigationTitle("Records")
                .navigationBarTitleDisplayMode(.inline)
                .padding()
                Spacer()
            }
        }
    }
    
}

struct RecordsView_Previews: PreviewProvider {
    static var previews: some View {
        RecordsView()
    }
}
