//
//  Questions.swift
//  Quiz
//
//  Created by Natalia Nikiforuk on 18/10/2024.
//

import Foundation
import SwiftUI

struct Question: Hashable, Codable {
    var question: String
    var answer: String
    var answers: [String]
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}

struct Questions {
    var questions: [Question]
}




