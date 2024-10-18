//
//  Circle.swift
//  Quiz
//
//  Created by Natalia Nikiforuk on 18/10/2024.
//

import Foundation

struct Circle {
    var number: Int
    
    var body: some View {
        Circle()
            .strokeBorder(Color.blue,lineWidth: 4)
            .background(Circle().foregroundColor(Color.red))
    }
}
