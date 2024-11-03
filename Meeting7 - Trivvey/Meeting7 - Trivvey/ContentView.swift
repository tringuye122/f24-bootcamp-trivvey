//
//  ContentView.swift
//  Meeting7 - Trivvey
//
//  Created by Tri Nguyen on 10/22/24.
//

import SwiftUI


struct ContentView: View {
    @State private var questions = [Question]()
    
    var body: some View {
        NavigationStack {
            List(questions, id: \.question) { question in
                NavigationLink(question.question, destination: QuestionView(question: question))
            }
            .navigationTitle("Trivvey")
            .onAppear {
                let url: URL = Bundle.main.url(forResource: "questions", withExtension: "json")!
                let data = try! Data(contentsOf: url)
                questions = try! JSONDecoder().decode([Question].self, from: data)
                questions.shuffle()
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        questions.shuffle()
                    } label: {
                        HStack {
                            Image(systemName: "shuffle")
                            Text("Shuffle")
                        }
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
#Preview {
    ContentView()
}
