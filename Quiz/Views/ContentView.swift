//
//  ContentView.swift
//  Quiz
//
//  Created by Natalia Nikiforuk on 18/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    QuestionsView()
                } label: {
                    Text("Show Detail")
                }
            }
            .navigationTitle("Learn some Spanish")
        }
    }
}

#Preview {
    ContentView()
}
