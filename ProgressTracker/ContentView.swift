//
//  ContentView.swift
//  ProgressTracker
//
//  Created by JooMin Choi on 31/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🏋️")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Progress Tracker")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
