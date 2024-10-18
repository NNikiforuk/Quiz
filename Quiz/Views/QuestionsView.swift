//
//  QuestionsView.swift
//  Quiz
//
//  Created by Natalia Nikiforuk on 18/10/2024.
//

import SwiftUI

struct QuestionsView: View {
    @State private var currentQuestionIndex = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("What is that?")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                questions[currentQuestionIndex].image
                    .resizable()
                    .frame(width: 250, height: 250)
            }
            HStack {
                ForEach(questions[currentQuestionIndex].answers, id: \.self) {answer in
                    Button(answer, action: game)
                        .padding()
                        .bold()
                        .background(Color(red: 0.9, green: 0.8, blue: 0.8))
                        .foregroundColor(.black)
                        .cornerRadius(8)
                }
                .padding()
            }
            .padding()
        }
    }
    
    func game() {
        
    }
}

#Preview {
    QuestionsView()
}
