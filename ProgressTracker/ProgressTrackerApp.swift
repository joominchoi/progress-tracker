//
//  ProgressTrackerApp.swift
//  ProgressTracker
//
//  Created by JooMin Choi on 31/05/2023.
//

import SwiftUI

@main
struct ProgressTrackerApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
