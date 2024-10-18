//
//  QuestionsView.swift
//  Quiz
//
//  Created by Natalia Nikiforuk on 18/10/2024.
//

import SwiftUI

struct QuestionsView: View {
    @State private var currentQuestionIndex = 0
    @State private var questionNr = 1
    @State private var result = 0
    @State private var showAlert = false
    
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
                    Button(answer, action: {
                        game(chosenAnswer: answer)
                    })
                        .padding()
                        .background(Color(red: 0.9, green: 0.8, blue: 0.8))
                        .foregroundColor(.black)
                        .cornerRadius(8)
                }
                .padding()
            }
            Text("The result: \(result)")
                .bold()
                .padding()
        }
        .alert("Game over", isPresented: $showAlert) {
            Button("Retry") {
                result = 0
                currentQuestionIndex = 0
                questionNr = 0
            }
        }
    }
    
    func changeQuestion() {
        currentQuestionIndex += 1
        questionNr += 1
    }
    
    func game(chosenAnswer: String) {
        if questionNr == 10 {
            showAlert = true
        } else {
            if chosenAnswer == questions[currentQuestionIndex].answer {
                result += 1
            }
            
            changeQuestion()
        }
    }
}

#Preview {
    QuestionsView()
}
