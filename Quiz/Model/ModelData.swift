//
//  ModelData.swift
//  Quiz
//
//  Created by Natalia Nikiforuk on 18/10/2024.
//

import Foundation

var questions: [Question] = load("questions.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    
    else {
        fatalError("Coulnd't find \(filename) in the main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Coulnd't load \(filename) from the main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Coulnd't parse \(filename) as \(T.self):\n\(error)")
    }
}
