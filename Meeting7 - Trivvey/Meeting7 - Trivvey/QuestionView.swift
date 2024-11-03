//
//  QuestionView.swift
//  Meeting7 - Trivvey
//
//  Created by Tri Nguyen on 11/3/24.
//

import SwiftUI

struct QuestionView: View {
    let question: Question
        
    @State private var selectedAnswer: String?
    
    var body: some View {
        VStack {
                    Text(question.question)
                        .font(.title)
                    VStack {
                        Button {
                            selectedAnswer = "A"
                        } label: {
                            Text(question.A)
                        }
                        
                        Button {
                            selectedAnswer = "B"
                        } label: {
                            Text(question.B)
                        }
                        
                        Button {
                            selectedAnswer = "C"
                        } label: {
                            Text(question.C)
                        }
                        
                        Button {
                            selectedAnswer = "D"
                        } label: {
                            Text(question.D)
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    
                    if let selectedAnswer = selectedAnswer {
                        if selectedAnswer == question.answer {
                            Text("Correct!")
                                .foregroundColor(.green)
                                .bold()
                        } else {
                            Text("Incorrect!")
                                .foregroundColor(.red)
                                .bold()
                        }
                    }
                }
            }
        }

        #Preview {
            QuestionView(question: .example)
        }
