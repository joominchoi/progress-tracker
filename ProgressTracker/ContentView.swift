//
//  ContentView.swift
//  ProgressTracker
//
//  Created by JooMin Choi on 31/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                Text("Tab 1")
                    .navigationTitle("Progress Tracker")
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            Text("Tab 2")
                .tabItem {
                    Label("More", systemImage: "ellipsis")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
