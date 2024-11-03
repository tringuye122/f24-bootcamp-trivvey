//
//  Question.swift
//  Meeting7 - Trivvey
//
//  Created by Tri Nguyen on 10/22/24.
//

import Foundation

struct Question: Codable {
    let question: String
    let A: String
    let B: String
    let C: String
    let D: String
    let answer: String
    
    static var example = Question(question: "What is the capital of France?", A: "Paris", B: "London", C: "Madrid", D: "Berlin", answer: "Paris")
}


