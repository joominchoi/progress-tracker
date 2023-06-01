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
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            RecordsView()
                .tabItem {
                    Label("Records", systemImage: "dumbbell")
                }
            Text("Tab 3")
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
