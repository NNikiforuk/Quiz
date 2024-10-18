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
                Text("Learn Spanish words")
                    .font(.title2)
                    .bold()
                NavigationLink {
                    QuestionsView()
                } label: {
                    Text("START")
                }
                .padding()
                .background(Color(red: 0.9, green: 0.8, blue: 0.8))
                .foregroundColor(.black)
                .cornerRadius(8)
                .bold()
                .padding()
                .accessibilityLabel("Start")
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
