//
//  HomeView.swift
//  ProgressTracker
//
//  Created by JooMin Choi on 31/05/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Dashboard")
                    .font(.title)
                VStack {
                    Text("Message of the day")
                        .fontWeight(.bold)
                        .frame(
                            maxWidth: .infinity,
                            alignment: .leading
                        )
                    Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...")
                        .frame(
                            maxWidth: .infinity,
                            alignment: .leading
                        )

                }
                .padding()
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
